from typing import List, Dict, Tuple, Optional

from Validators._base import Base


from nmigen import Signal, Value, Elaboratable, Module, Cat, Const, Mux
from nmigen.build import Platform
from nmigen.hdl.ast import Statement

from internals import Registers, Buses, Reset, Ccr
from alu import Alu

from Instructions.set import InstructionSet, Instructions

from nmigen.asserts import Assert, Past, Cover, Assume

class Core(Elaboratable):
	""" The core of the CPU """

	def __init__(self, validator: Optional[Base]):
		self.validator = validator

		self.Addr = Signal(16)
		self.Din = Signal(8)
		self.Dout = Signal(8)
		self.RW = Signal(reset=1) # read=1, write=0
		self.Rst = Signal()


		# registers
		self.registers = Registers(self.Din, self.Dout, self.Addr)
		self.buses = Buses(self.registers, self)
		self.reset = Reset(self)		


		self.cycle = Signal(4)
		self.end_instr_flag = Signal()
		self.end_instr_addr = Signal(16)

		self.instruction_set = InstructionSet()
		self.alu = Alu(self)

	def ports(self) -> List[Signal]:
		return [self.Addr, self.Din, self.Dout, self.RW, self.Rst]

	def is_running(self, m: Module):
		return (self.reset.is_running(m) & self.registers.ccr[Ccr.RUN] & self.registers.ccr[Ccr.RUN_2])

	def elaborate(self, platform: Platform) -> Module:
		m = Module()
		self.buses.setup(m)
		self.reset.setup(m)
		self.alu.setup(m)

		with m.If(self.end_instr_flag):
			m.d.ph1 += self.registers.pc.eq(self.end_instr_addr)
			m.d.ph1 += self.Addr.eq(self.end_instr_addr)
			m.d.ph1 += self.RW.eq(1)
			m.d.ph1 += self.cycle.eq(0)

		with m.If(self.is_running(m)):
			with m.If(self.cycle == 0):
				self.fetch(m)
			with m.Else():
				self.execute(m)
		
		if self.validator:
			self.validator.init(m, self)
			self.validator.validate()
			
		return m

	def fetch(self, m: Module):
		m.d.ph1 += self.registers.instr.eq(self.Din)
		m.d.ph1 += self.cycle.eq(1)
		m.d.ph1 += self.RW.eq(1)
		self.next_pc_inc(m)

	def execute(self, m: Module):
		with m.Switch(self.registers.instr):
			for key, instr in self.instruction_set.instructions.items():
				with m.Case(key):
					instr.implement(m, self)
			with m.Default():
				self.halt(m)

	def halt(self, m: Module):
		m.d.ph1 += self.registers.ccr.eq(self.registers.ccr & 0b00111111)

	def incAddr(self, m: Module):
		self.buses.incdec16_inc(m)

	def decAddr(self, m: Module):
		self.buses.incdec16_dec(m)

	def next(self, m: Module, addr: Statement):
		m.d.comb += self.end_instr_addr.eq(addr)
		m.d.comb += self.end_instr_flag.eq(1)

	def pc_inc(self, m: Module):
		self.incAddr(m)
		self.buses.read_incdec16(m, self.registers.pc)

	def next_pc_inc(self, m: Module):
		self.pc_inc(m)
		self.next(m, self.buses.incdec16)

	def next_pc(self, m: Module):
		self.next(m, self.registers.pc)
