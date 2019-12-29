THIS_FILE := $(lastword $(MAKEFILE_LIST))
VALIDATORS = Validators

define RUN_VALIDATOR
$(MAKE) -f $(THIS_FILE) VALIDATOR=$(1) verify &&
endef

run:
	python3 cli.py

.PHONY: simulate
simulate:
	python3 simulate.py

.PHONY: simulate-open
simulate-open:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave simulate.gtkw


.PHONY: validate
validate:
	$(foreach file, $(wildcard $(VALIDATORS)/[a-z]*.py), $(call RUN_VALIDATOR,$(notdir $(basename $(file))))) true

.PHONY: verify
verify:
	@echo "Running validator for $(VALIDATOR)"
	python3 cli.py --validator $(VALIDATOR) generate -t il > core.il
	sby -f core.sby


counterexample:
	/Applications/gtkwave.app/Contents/Resources/bin/gtkwave core_bmc/engine_0/trace.vcd