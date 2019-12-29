from nmigen import Signal, Value, Elaboratable, Module
from nmigen.back.pysim import Simulator, Delay

from cli import setup

from Simulations.Cases import *

if __name__ == "__main__":
	s = setup(False)
	m = s.m
	core = s.core

	simulation = TestCBA(core, m)
	simulation.load()

	sim = Simulator(m)
	sim.add_clock(1e-9, domain="ph1")

	simulation.add_process(sim)

	with sim.write_vcd("simulate.vcd", "simulate.gtkw", traces=core.ports()):
		sim.run()