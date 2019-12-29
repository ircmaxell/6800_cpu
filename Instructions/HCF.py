

class HCF:
	def implement(self, m, core):
		with m.If(core.cycle == 1):
			m.d.ph1 += core.Addr.eq(core.registers.pc + 1)
			m.d.ph1 += core.registers.pc.eq(core.registers.pc + 1)
			m.d.ph1 += core.RW.eq(1)
			# Note we don't increment cycle, forcing it into an infinite loop
