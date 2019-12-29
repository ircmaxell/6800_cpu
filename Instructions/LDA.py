
from nmigen import Signal, Module, Cat

class LDA_IMM:
	def __init__(self, register_name):
		self.register_name = register_name

	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += getattr(core.registers, self.register_name).eq(core.Din)
			core.next_pc_inc(m)

class LDA_DIR:
	def __init__(self, register_name):
		self.register_name = register_name

	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.Addr.eq(core.Din)
			m.d.ph1 += core.registers.pc.eq(core.registers.pc + 1)
			m.d.ph1 += core.RW.eq(1)
		with m.If(core.cycle == 2):
			m.d.ph1 += getattr(core.registers, self.register_name).eq(core.Din)
			core.next_pc_inc(m)

class LDA_EXT:
	def __init__(self, register_name):
		self.register_name = register_name

	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.tmp8.eq(core.Din)
			core.pc_inc(m)
			m.d.ph1 += core.RW.eq(1)
		with m.If(core.cycle == 2):
			lookup_addr = Cat(core.registers.tmp8, core.Din)
			m.d.ph1 += core.Addr.eq(lookup_addr)
			m.d.ph1 += core.RW.eq(1)
		with m.If(core.cycle == 3):
			m.d.ph1 += getattr(core.registers, self.register_name).eq(core.Din)
			core.next_pc_inc(m)
