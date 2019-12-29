
class NOP:

	def implement(self, m, core):
		with m.If(core.cycle == 1):
			core.next(m, core.registers.pc)