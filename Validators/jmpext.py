
from ._base import Base
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.asserts import Assert, Past, Cover, Assume


class jmpext(Base):

	def validate(self):
		with self.is_running():
			with self.is_instruction(0x7E, 2):
				self.assert_past_is(self.Din, [None, self.registers.pc[:8], self.registers.pc[8:]])
				self.assert_end_of_instruction()


