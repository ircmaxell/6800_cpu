
from nmigen.asserts import Assert, Past, Cover, Assume
from nmigen.hdl.ast import Statement

class Base:
	NOW=0
	LAST=1
	BEFORE_LAST=2
	BEFORE_BEFORE_LAST=3

	def init(self, m, core):
		self.m = m
		self.core = core
		self.Addr = core.Addr
		self.Din = core.Din
		self.Dout = core.Dout
		self.RW = core.RW
		self.Rst = core.Rst
		self.cycle = core.cycle

		self.registers = core.registers

	def strobe(self, signal, times_ago):
		times = self.past(signal)
		ret = times[times_ago]
		for i in range(0, times_ago):
			ret = ret & (~times[i])
		return self.m.If(ret)

	def past(self, signal):
		return [
			signal,
			Past(signal),
			Past(signal, 2),
			Past(signal, 3),
			Past(signal, 4),
		]

	def is_running(self):
		return self.m.If(self.core.is_running(self.m))

	def is_instruction(self, instruction, max_cycle):
		return self.m.If((Past(self.core.cycle) == max_cycle) & (Past(self.core.registers.instr) == instruction))

	def assert_end_of_instruction(self):
		self.m.d.ph1 += Assert(self.registers.pc == self.Addr)
		self.m.d.ph1 += Assert(self.cycle == 0)

	def assert_past_is(self, signal, elements):
		times = self.past(signal)
		for i in range(len(elements)):
			if elements[i] is not None:
				self.m.d.ph1 += Assert(times[i] == elements[i])

	def assert_inc16(self, signal, ago):
		if ago == 0:
			self.m.d.ph1 += Assert(signal == (Past(signal) + 1)[:16])
		else:
			self.m.d.ph1 += Assert(Past(signal, ago) == (Past(signal, ago + 1) + 1)[:16])

	def assert_equals(self, signal, value):
		self.m.d.ph1 += Assert(signal == value)
