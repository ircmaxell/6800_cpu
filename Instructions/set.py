
from enum import IntEnum

from .CMP import *
from .FLAGS import *
from .NOP import *
from .HCF import *
from .JMP import *
from .LDA import *
from .STA import *
from .ABA import *

class InstructionSet:

	def __init__(self):
		self.instructions = {
			Instructions.NOP: NOP(),
			Instructions.ABA: ABA(),
			Instructions.HCF: HCF(),
			Instructions.JMP_EXT: JMP_EXT(),
			Instructions.LDA_A_IMM: LDA_IMM('a'), # LDA_A_IMM
			Instructions.LDA_A_DIR: LDA_DIR('a'), # LDA_A_DIR
			Instructions.LDA_A_EXT: LDA_EXT('a'), # LDA_A_EXT
			Instructions.LDA_B_IMM: LDA_IMM('b'), # LDA_B_IMM
			Instructions.LDA_B_DIR: LDA_DIR('b'), # LDA_B_DIR
			Instructions.LDA_B_EXT: LDA_EXT('b'), # LDA_B_EXT
			Instructions.STA_EXT: STA_EXT(),
			Instructions.SEC: SEC(),
			Instructions.SEI: SEI(),
			Instructions.SEV: SEV(),
			Instructions.CLC: CLC(),
			Instructions.CLI: CLI(),
			Instructions.CLV: CLV(),
			Instructions.CBA: CBA(),
		}

class Instructions(IntEnum):
	NOP = 0x01
	ABA = 0x1B
	HCF = 0xDD
	JMP_EXT = 0x7E
	LDA_A_IMM = 0x86
	LDA_A_DIR = 0x96
	LDA_A_EXT = 0xB6
	LDA_B_IMM = 0xC6
	LDA_B_DIR = 0xD6
	LDA_B_EXT = 0xF6
	STA_EXT = 0xB7
	SEC = 0x0D
	SEI = 0x0F
	SEV = 0x0B
	CLC = 0x0C
	CLI = 0x0E
	CLV = 0x0A
	CBA = 0x11