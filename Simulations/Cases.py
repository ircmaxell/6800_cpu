
from nmigen import Signal, Value, Elaboratable, Module
from .Simulation import Simulation

class Reset(Simulation):

	def memory(self):
		return {
			0xFFFE: 0x12,
			0xFFFF: 0x34,
			0x1234: 0x01,
		}
		
	def cycles(self):
		return 8


class JmpExt(Simulation):

	def memory(self):
		return {
			0xFFFE: 0x12,
			0xFFFF: 0x34,
			0x1234: 0b01111110,
			0x1235: 0x45,
			0x1236: 0x67,
			0x4567: 0b00000001, 
		}
		
	def cycles(self):
		return 10

class HCF(Simulation):

	def memory(self):
		return {
			0xFFFE: 0x12,
			0xFFFF: 0x34,
			0x1234: 0b11011101,
		}
		
	def cycles(self):
		return 100

class IncForever(Simulation):

	def memory(self):
		return {
			0xFFFE: 0x10,
			0xFFFF: 0x00,
			0x1000: 0x86, #LDA 01
			0x1001: 0x01,
			0x1002: 0xC6, #LDB 01
			0x1003: 0x01,
			0x1004: 0x1B, #ABA
			0x1005: 0x7E, #JMP 0x1004
			0x1006: 0x10,
			0x1007: 0x04,
		}
	
	def cycles(self):
		return 100


class StaExtTest(Simulation):

	def memory(self):
		return {
			0xFFFE: 0x10,
			0xFFFF: 0x00,
			0x1000: 0x86, #LDA 01
			0x1001: 0x01,
			0x1002: 0xB7, #STA 0x2000
			0x1003: 0x20,
			0x1004: 0x00, 
			0x1005: 0xDD, # HCF
		}
	
	def cycles(self):
		return 100


class TestCBA(Simulation):

	def memory(self):
		return {
			0xFFFE: 0x10,
			0xFFFF: 0x00,
			0x1000: 0x86, #LDA 01
			0x1001: 0x01,
			0x1002: 0xC6, #LDB 01
			0x1003: 0x01,
			0x1004: 0x11, #CBA
			0x1005: 0x1B, #ABA
			0x1006: 0x7E, #JMP 0x1004
			0x1007: 0x10,
			0x1008: 0x04,
		}
	
	def cycles(self):
		return 100