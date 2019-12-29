
from ._base import Base
from nmigen import Signal, Value, Elaboratable, Module
from nmigen.asserts import Assert, Past, Cover, Assume


class ldb_imm(Base):

	def validate(self):
		with self.is_running():
			with self.is_instruction(0xC6, 2):
				self.assert_equals(self.registers.b, Past(self.Din))
				self.assert_end_of_instruction()


