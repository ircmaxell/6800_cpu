
from enum import IntEnum
from nmigen import Signal, Module, Cat

class Ccr(IntEnum):
	CARRY = 0
	OVERFLOW = 1
	ZERO = 2
	NEGATIVE = 3
	INTERRUPT = 4
	HALF_CARRY = 5
	RUN = 6 # inverse, 1 = run, 0 = halt
	RUN_2 = 7 # inverse 1 = run, 0 = halt

class SEC:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.ccr.eq(core.registers.ccr | (1 << Ccr.CARRY))
			core.next_pc_inc(m)

class CLC:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.ccr.eq(core.registers.ccr & ~(1 << Ccr.CARRY))
			core.next_pc_inc(m)

class SEI:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.ccr.eq(core.registers.ccr | (1 << Ccr.INTERRUPT))
			core.next_pc_inc(m)

class CLI:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.ccr.eq(core.registers.ccr & ~(1 << Ccr.INTERRUPT))
			core.next_pc_inc(m)
class SEV:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.ccr.eq(core.registers.ccr | (1 << Ccr.OVERFLOW))
			core.next_pc_inc(m)

class CLV:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.ccr.eq(core.registers.ccr & ~(1 << Ccr.OVERFLOW))
			core.next_pc_inc(m)