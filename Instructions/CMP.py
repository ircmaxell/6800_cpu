


from nmigen import Signal, Module, Cat
from nmigen.asserts import Assert, Past, Cover, Assume


class CBA:
	def implement(self, m: Module, core):
		with m.If(core.cycle == 1):
			core.buses.write_src8_1(m, core.registers.a)
			core.buses.write_src8_2(m, core.registers.b)
			core.alu.sub(m)
			core.next_pc(m)
