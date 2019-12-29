

from nmigen import Signal, Module, Cat


class STA_EXT:

	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.tmp8.eq(core.Din)
			m.d.ph1 += core.registers.pc.eq(core.registers.pc + 1)
			m.d.ph1 += core.Addr.eq(core.registers.pc + 1)
			m.d.ph1 += core.RW.eq(1)
			m.d.ph1 += core.cycle.eq(2)
		with m.If(core.cycle == 2):
			addr = Cat(core.Din, core.registers.tmp8)
			m.d.ph1 += core.registers.pc.eq(core.registers.pc + 1)
			m.d.ph1 += core.Addr.eq(addr)
			m.d.ph1 += core.Dout.eq(core.registers.a)
			m.d.ph1 += core.RW.eq(0)
			m.d.ph1 += core.cycle.eq(3)
		with m.If(core.cycle == 3):
			core.next(m, core.registers.pc)
