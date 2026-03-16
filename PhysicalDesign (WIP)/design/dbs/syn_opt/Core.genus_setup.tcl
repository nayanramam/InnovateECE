################################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution 25.11-s095_1
#   on 03/13/2026 11:34:25
#
# This file can only be run in Genus Common UI mode.
#
################################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version 25.11-s095_1


# Remove Existing Design
################################################################################
if {[::legacy::find -design design:Core] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj design:Core
}


# To allow user-readonly attributes
################################################################################
::legacy::set_attribute -quiet force_tui_is_remote 1 /

phys::read_script /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.root.g.gz


# Source INIT Setup file
################################################################################
source /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.genus_init.tcl

phys::read_script /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.g.gz
phys::read_derate_file -flavor trusted -design design:Core /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.derate.tcl

phys::read_lec_taf /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.lec.taf.gz
phys::read_taf /nethome/dkhalil8/InnovateECE/PhysicalDesign/design/dbs/syn_opt/Core.safety.taf.gz
puts "\n** Restoration Completed **\n"


# Data Integrity Check
################################################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "25.11-s095_1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: 25.11-s095_1  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack design:Core]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "inf"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: inf,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
if {"[string_representation [::legacy::get_attribute slack_by_mode design:Core]]" != "{}"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack_by_mode: {}  current slack_by_mode: [string_representation [::legacy::get_attribute slack_by_mode design:Core]]"
}
# tns
set _tns_ [::legacy::get_attribute tns design:Core]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area design:Core]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 0,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area design:Core]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 0,  current net area: $_net_area_"
}
unset _net_area_
# library domain count
if {[llength [::legacy::find /libraries -library_domain *]] != "1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden # library domains: 1  current # library domains: [llength [::legacy::find /libraries -library_domain *]]"
}
