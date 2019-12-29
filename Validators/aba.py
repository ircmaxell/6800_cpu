
from ._base import Base
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.asserts import Assert, Past, Cover, Assume


class aba(Base):

	def validate(self):
		with self.is_running():
			with self.is_instruction(0x1B, 2):
				self.assert_equals(self.registers.a, Past(self.registers.a) + Past(self.registers.b))
				self.assert_end_of_instruction()


