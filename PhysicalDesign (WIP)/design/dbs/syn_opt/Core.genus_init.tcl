################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 03/13/2026 11:34:25
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}
::legacy::set_attribute -quiet init_mmmc_version 2 /

read_mmmc /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.mmmc.tcl

read_physical -lef {/nethome/dkhalil8/InnovateECE/PhysicalDesign/design/../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/../SiliconJackets/sram_sky130/lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef}

read_netlist /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.v.gz

init_design
