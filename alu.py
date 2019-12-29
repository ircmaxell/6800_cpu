from typing import Dict

from enum import IntEnum

from internals import Module, Ccr

from nmigen import Signal, Module, Cat
from nmigen.asserts import Assert, Past, Cover, Assume

class AluOperations(IntEnum):
	NONE = 0
	ADD = 1
	SUB = 2

class Alu():
	def __init__(self, core):
		self.core = core
		self.alu8 = core.buses.alu8
		self.src1 = core.buses.src8_1
		self.src2 = core.buses.src8_2

		self.alu_function = Signal(AluOperations)

		self.flag_value = Signal(8)
		self.update_flag = Signal()

		self.carry = Signal()
		self.overflow = Signal()
		self.negative = Signal()
		self.zero = Signal()
		self.half_carry = Signal()

	def setup(self, m: Module):
		with m.Switch(self.alu_function):
			with m.Case(AluOperations.ADD):
				m.d.comb += self.alu8.eq(self.src1 + self.src2)
				m.d.comb += self.update_flag.eq(1)
			with m.Case(AluOperations.SUB):
				m.d.comb += self.alu8.eq(self.src1 - self.src2)
				m.d.comb += self.update_flag.eq(1)
		self.setup_flags(m)

	def add(self, m: Module):
		m.d.comb += self.alu_function.eq(AluOperations.ADD)

	def sub(self, m: Module):
		m.d.comb += self.alu_function.eq(AluOperations.SUB)

	def setup_flags(self, m: Module):
		with m.If(self.alu8 > 0xFF):
			m.d.comb += self.carry.eq(1)

		with m.If(self.alu8 > 0x7F):
			m.d.comb += self.overflow.eq(1)

		with m.If(self.alu8[7]):
			m.d.comb += self.negative.eq(1)

		with m.If(self.alu8 == 0):
			m.d.comb += self.zero.eq(1)	

		with m.If(self.alu8 > 0x0F):
			m.d.comb += self.half_carry.eq(1)

		with m.If(self.update_flag):
			m.d.ph1 += self.core.registers.ccr.eq(
				(self.carry << Ccr.CARRY)
				| (self.overflow << Ccr.OVERFLOW)
				| (self.negative << Ccr.NEGATIVE)
				| (self.zero << Ccr.ZERO)
				| (self.half_carry << Ccr.HALF_CARRY) 
				| (self.core.registers.ccr & 0b11000000)
			)