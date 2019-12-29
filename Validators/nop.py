
from ._base import Base
from nmigen.asserts import Assert, Past, Cover, Assume


class nop(Base):

	def validate(self):
		with self.is_running():
			with self.is_instruction(0x01, 2):
				self.assert_inc16(self.registers.pc, self.NOW)
				self.assert_end_of_instruction()
