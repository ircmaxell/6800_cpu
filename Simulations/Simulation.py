
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.back.pysim import Simulator, Delay


class Simulation:

	def __init__(self, core, m: Module):
		self.core = core
		self.m = m

	def load(self):
		with self.m.Switch(self.core.Addr):
			for addr, data in self.memory().items():
				with self.m.Case(addr):
					self.m.d.comb += self.core.Din.eq(data)
			with self.m.Default():
				self.m.d.comb += self.core.Din.eq(0xFF)

	def add_process(self, sim: Simulator):
		sim.add_sync_process(lambda: (yield from self.run()), domain="ph1")


	def run(self):
		for _ in range(4):
			yield
		yield self.core.Rst.eq(1)
		yield
		yield self.core.Rst.eq(0)
		yield

		for _ in range(self.cycles()):
			yield
