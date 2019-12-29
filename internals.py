from typing import Dict, Optional

from enum import IntEnum
from Instructions.set import Instructions

from nmigen import Signal, Module, Cat
from nmigen.asserts import Assert, Past, Cover, Assume

class Reg8(IntEnum):
	NONE = 0
	A = 1
	B = 2
	XH = 3
	XL = 4
	SPH = 5
	SPL = 6
	PCH = 7
	PCL = 8
	TMP8 = 9
	TMP16H = 10
	TMP16L = 11
	DIN = 12
	DOUT = 13
	CCR = 14

class Reg16(IntEnum):
	NONE = 0
	X = 1
	SP = 2
	PC = 3
	TMP16 = 4
	ADDR = 5

class Ccr(IntEnum):
	CARRY = 0
	OVERFLOW = 1
	ZERO = 2
	NEGATIVE = 3
	INTERRUPT = 4
	HALF_CARRY = 5
	RUN = 6 # inverse, 1 = run, 0 = halt
	RUN_2 = 7 # inverse 1 = run, 0 = halt

class Bus(IntEnum):
	NONE = 0
	SRC8_1 = 1
	SRC8_2 = 2
	ALU8 = 3
	SRC16 = 4
	INCDEC16 = 5

class Register():
	def __init__(self, register: Signal, writable: bool):
		self.register = register;
		self.writable = writable

class Registers:
	def __init__(self, Din: Signal, Dout: Signal, Addr: Signal):
		self.a = Signal(8, reset_less=True)
		self.b = Signal(8, reset_less=True)
		self.x = Signal(8, reset_less=True)
		self.sp = Signal(16, reset_less=True)
		self.pc = Signal(16, reset_less=True)
		self.instr = Signal(Instructions, reset_less=True)
		self.ccr = Signal(8, reset_less=True)

		self.tmp8 = Signal(8, reset_less=True)
		self.tmp16 = Signal(16, reset_less=True)

		self.reg8_map = {
			Reg8.A: Register(self.a, True),
			Reg8.B: Register(self.b, True),
			Reg8.XH: Register(self.x[8:], True),
			Reg8.XL: Register(self.x[:8], True),
			Reg8.SPH: Register(self.sp[8:], True),
			Reg8.SPL: Register(self.sp[:8], True),
			Reg8.PCH: Register(self.pc[8:], True),
			Reg8.PCL: Register(self.pc[:8], True),
			Reg8.TMP8: Register(self.tmp8, True),
			Reg8.TMP16H: Register(self.tmp16[8:], True),
			Reg8.TMP16L: Register(self.tmp16[:8], True),
			Reg8.DIN: Register(Din, False),
			Reg8.DOUT: Register(Dout, True),
			Reg8.CCR: Register(self.ccr, False),

		}

		self.reg16_map = {
			Reg16.X: Register(self.x, True),
			Reg16.SP: Register(self.sp, True),
			Reg16.PC: Register(self.pc, True),
			Reg16.TMP16: Register(self.tmp16, True),
			Reg16.ADDR: Register(Addr, True),
		}

	def find_by_register8(self, r) -> Optional[Reg8]:
		for (e, reg) in self.reg8_map.items():
			if reg.register is r:
				return e
		return None

	def find_by_register16(self, r) -> Optional[Reg8]:
		for (e, reg) in self.reg16_map.items():
			if reg.register is r:
				return e
		return None

class Buses:
	
	def __init__(self, registers: Registers, core):
		self.registers = registers
		self.core = core

		self.src8_1 = Signal(8)
		self.src8_2 = Signal(8)
		self.alu8 = Signal(8)
		self.src16 = Signal(16)
		self.incdec16 = Signal(16)

		self.src8_1_select = Signal(Reg8)
		self.src8_2_select = Signal(Reg8)
		self.alu8_write = Signal(len(Reg8.__members__) + 1)
		self.src16_select = Signal(Reg16)
		self.src16_write = Signal(len(Reg16.__members__) + 1)
		self.incdec16_write = Signal(len(Reg16.__members__) + 1)

		self.incdec16_dir = Signal(1) # 0 = inc, 1 = dec


	def setup(self, m: Module):
		self.setup_src_bus(m, self.registers.reg8_map, self.src8_1, self.src8_1_select)
		self.setup_src_bus(m, self.registers.reg8_map, self.src8_2, self.src8_2_select)
		self.setup_dest_bus(m, self.registers.reg8_map, self.alu8, self.alu8_write)
		self.setup_src_bus(m, self.registers.reg16_map, self.src16, self.src16_select)
		self.setup_dest_bus(m, self.registers.reg16_map, self.src16, self.src16_write)
		self.setup_dest_bus(m, self.registers.reg16_map, self.incdec16, self.incdec16_write)

		with m.If(self.incdec16_dir == 0):
			m.d.comb += self.incdec16.eq(self.core.Addr + 1)
		with m.Else():
			m.d.comb += self.incdec16.eq(self.core.Addr - 1)

	def incdec16_inc(self, m: Module):
		m.d.comb += self.incdec16_dir.eq(0)

	def incdec16_dec(self, m: Module):
		m.d.comb += self.incdec16_dir.eq(1)

	def setup_src_bus(self, m: Module, reg_map: Dict[IntEnum, Register], bus: Signal, selector: Signal):
		with m.Switch(selector):
			for (e, reg) in reg_map.items():
				with m.Case(e):
					m.d.comb += bus.eq(reg.register)
			with m.Default():
				m.d.comb += bus.eq(0)

	def setup_dest_bus(self, m: Module, reg_map: Dict[IntEnum, Register], bus: Signal, bitmap: Signal):
		for e, reg in reg_map.items():
			if reg.writable:
				with m.If(bitmap[e.value]):
					m.d.ph1 += reg.register.eq(bus)

	def write_src8_1(self, m: Module, r):
		reg = self.registers.find_by_register8(r)
		m.d.comb += self.src8_1_select.eq(reg)

	def write_src8_2(self, m: Module, r):
		reg = self.registers.find_by_register8(r)
		m.d.comb += self.src8_2_select.eq(reg)

	def read_alu8(self, m: Module, r):
		reg = self.registers.find_by_register8(r)
		m.d.comb += self.alu8_write.eq(self.alu8_write | (1 << reg))

	def write_src16(self, m: Module, r):
		reg = self.registers.find_by_register16(r)
		m.d.comb += self.src16_select.eq(reg)

	def read_src16(self, m: Module, r):
		reg = self.registers.find_by_register16(r)
		m.d.comb += self.src16_write.eq(self.src16_write | (1 << reg))

	def read_incdec16(self, m: Module, r):
		reg = self.registers.find_by_register16(r)
		if reg is None:
			raise Error("Wahtever!!!")
		m.d.comb += self.incdec16_write.eq(self.incdec16_write | (1 << reg))

class Reset:
	def __init__(self, core):
		self.reset_state = Signal(2)
		self.core = core

	def setup(self, m: Module):
		with m.Switch(self.reset_state):
			with m.Case(0):
				m.d.ph1 += self.core.Addr.eq(0xFFFE)
				m.d.ph1 += self.core.RW.eq(1)
				m.d.ph1 += self.reset_state.eq(1)
			with m.Case(1):
				m.d.ph1 += self.core.Addr.eq(0xFFFF)
				m.d.ph1 += self.core.RW.eq(1)
				m.d.ph1 += self.core.registers.tmp8.eq(self.core.Din)
				m.d.ph1 += self.reset_state.eq(2)
			with m.Case(2):
				m.d.ph1 += self.reset_state.eq(3)
				reset_vec = Cat(self.core.Din, self.core.registers.tmp8)
				m.d.ph1 += self.core.registers.ccr.eq((1 << Ccr.RUN) | (1 << Ccr.RUN_2))
				self.core.next(m, reset_vec)

	def is_running(self, m: Module):
		return self.reset_state == 3
