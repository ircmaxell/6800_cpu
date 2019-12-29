
from ._base import Base
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.asserts import Assert, Past, Cover, Assume


class lda_imm(Base):

	def validate(self):
		with self.is_running():
			with self.is_instruction(0x86, 2):
				self.assert_equals(self.registers.a, Past(self.Din))
				self.assert_end_of_instruction()


