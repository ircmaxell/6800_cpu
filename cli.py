from nmigen import Signal, Value, Elaboratable, Module
from nmigen.cli import main_parser, main_runner
from nmigen import ClockDomain, ClockSignal

import importlib

from core import Core

from Validators._base import Base

from typing import NamedTuple, Optional

class CliSetup(NamedTuple):
	m: Module
	core: Core
	ph1: ClockDomain
	ph1clk: ClockSignal

def setup(validator: Optional[Base]):
	result = CliSetup(
		Module(),
		Core(validator),
		ClockDomain("ph1"),
		ClockSignal("ph1"),
	)
	result.m.submodules.core = result.core
	result.m.domains.ph1 = result.ph1
	result.ph1.rst = result.core.Rst

	return result


if __name__ == "__main__":
	parser = main_parser()
	parser.add_argument("--validator")
	args = parser.parse_args()

	verification: Optional[Base] = None
	if args.validator is not None:
		module = importlib.import_module(f"Validators.{args.validator}")
		formal_class = getattr(module, f"{args.validator}")
		verification = formal_class()

	s = setup(verification)

	main_runner(parser, args, s.m, ports=s.core.ports() + [s.ph1clk])
