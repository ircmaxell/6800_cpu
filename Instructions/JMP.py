


from nmigen import Signal, Module, Cat
from nmigen.asserts import Assert, Past, Cover, Assume


class JMP_EXT:

	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.registers.tmp8.eq(core.Din)
			core.pc_inc(m)
			core.buses.read_incdec16(m, core.Addr)

			m.d.ph1 += core.RW.eq(1)
			m.d.ph1 += core.cycle.eq(2)
		with m.If(core.cycle == 2):
			new_pc = Cat(core.Din, core.registers.tmp8)
			core.next(m, new_pc)
