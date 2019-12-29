
from ._base import Base
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.asserts import Assert, Past, Cover, Assume


class reset(Base):

	def validate(self):
		with self.strobe(self.Rst, 4):
			self.assert_past_is(self.Addr, [None, 0xFFFF, 0xFFFE])
			self.assert_past_is(self.Din, [None, self.Addr[:8], self.Addr[8:]])
			self.assert_end_of_instruction()