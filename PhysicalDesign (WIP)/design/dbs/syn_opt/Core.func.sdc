# ####################################################################

#  Created by Genus(TM) Synthesis Solution 25.11-s095_1 on Fri Mar 13 11:34:24 EDT 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design Core

create_clock -name "core_clock" -period 25.0 -waveform {0.0 12.5} [get_ports clock]
set_clock_transition 0.15 [get_clocks core_clock]
set_load -pin_load 0.0334 [get_ports clock]
set_load -pin_load 0.0334 [get_ports reset]
set_load -pin_load 0.0334 [get_ports mem_en]
set_clock_gating_check -setup 0.0 
set_max_transition 1.5 [get_ports clock]
set_max_transition 1.5 [get_ports reset]
set_max_transition 1.5 [get_ports mem_en]
set_clock_uncertainty -setup 0.25 [get_clocks core_clock]
set_clock_uncertainty -hold 0.25 [get_clocks core_clock]
