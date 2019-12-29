
from ._base import Base
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.asserts import Assert, Past, Cover, Assume


class hcf(Base):

	def validate(self):
		with self.is_running():
			with self.is_instruction(0xDD, 1):
				self.assert_equals(self.cycle, 1)
				self.assert_inc16(self.Addr, self.NOW)
				self.m.d.ph1 += Assert(self.cycle == 1) # Note, this is not the end of the instruction, this is the next memory address
