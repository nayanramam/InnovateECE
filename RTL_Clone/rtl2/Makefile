TARBALL_SUFFIX = _ece3058_lab2_submission
SUBMIT_FILES   = $(wildcard *.sv) include/core_pkg.sv

.PHONY: all sim core_tb clean check-username submit

all: sim

core_tb: ./include/core_pkg.sv ./testbench/core_tb.sv Core.sv Fetch.sv Instr_Mem.sv IF_Stage.sv ID_Stage.sv Stall_Control.sv ALU.sv EX_Stage.sv FWD_Control.sv DRAM.sv DFlipFlop.sv Register_File.sv Mem_Stage.sv WB_Stage.sv Flush_Control.sv
	iverilog -g2012 -I include -s Core_tb -o $@ $^

sim: core_tb
	vvp $<

check-username:
	@if [ -z "$(GT_USERNAME)" ]; then \
		echo "Before running 'make submit', please set your GT Username in the environment"; \
		echo "Run: \"export GT_USERNAME=<your username>\""; \
		exit 1; \
	fi

submit: clean check-username
	@ts=$$(date -u +%Y-%m-%dT%H:%M:%SZ); \
	echo "gt_username=$(GT_USERNAME)" > .timestamp; \
	echo "created_utc=$$ts" >> .timestamp; \
	echo "sha256=$$(sha256sum $(SUBMIT_FILES) | sha256sum | cut -d' ' -f1)" >> .timestamp; \
	tar -czf $(GT_USERNAME)$(TARBALL_SUFFIX).tar.gz $(SUBMIT_FILES) .timestamp; \
	rm -f .timestamp; \
	echo "Submission tarball written to $(GT_USERNAME)$(TARBALL_SUFFIX).tar.gz"; \
	echo "Please decompress it yourself and make sure it looks right!"; \
	echo "Then submit it to Gradescope"

clean:
	@rm -f core_tb Core_Simulation.vcd $(GT_USERNAME)$(TARBALL_SUFFIX).tar.gz
