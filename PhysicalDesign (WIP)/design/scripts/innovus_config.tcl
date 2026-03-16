# Generated using: Flowkit 23.10-a010_1
################################################################################
# Innovus attributes
#
#  Attributes used to drive tool behavior.  Most typically these are root level
#  attributes.  All root attributes can be listed by using 'report_obj -all' or
#  by category using 'report_obj -all -verbose'
#
#  Further attribute help can be obtained by using the command 'help <ATTRIBUTE>'
#
#  The init_innovus_user flow_step is provided to specify tool level configs after a
#  design has been loaded via the init_design flow_step or specified as a
#  flow_starting_db from a subsequent flow (ie syn_opt).
#
################################################################################

##############################################################################
# STEP block_start (design override)
#
# When Innovus starts from a Genus synthesis flat DB (type rc), read_db
# loads the netlist but physical technology (LEF layers) is not embedded in
# the Genus flat DB format. Without calling read_physical + init_design,
# Innovus remains uninitialized: init_innovus_yaml gets IMPSYC-6373 errors
# (layer objects not found) and create_floorplan fails with IMPSE-110.
#
# This override detects the rc DB type and completes Innovus initialization
# before init_innovus_yaml runs, so routing_layers and CTS attributes apply
# cleanly to an initialized design.
##############################################################################
create_flow_step -name block_start -owner design {
  set_db flow_write_db_common false
  # Only apply in Innovus when the input is a Genus synthesis flat DB (rc).
  # Genus blocks also read rc DBs but are at initialization_complete already,
  # so we guard with program_short_name to avoid TUI-340 in Genus.
  if {[string match "innovus*" [get_db program_short_name]] && [dict exists [get_db flow_starting_db] rc]} {
    set_db init_ground_nets [get_flow_config init_ground_nets]
    set_db init_power_nets  [get_flow_config init_power_nets]
    read_physical -lef [get_flow_config init_physical_files lef_files]
    # Derive paths from genus_to_innovus write_design output: dbs/<syn_step>/<design>.*
    set _syn_db [dict get [get_db flow_starting_db] rc]
    set _syn_step [file rootname [file tail $_syn_db]]
    set _base [file join [get_db flow_db_directory] $_syn_step [get_flow_config design_name]]
    read_mmmc ${_base}.mmmc.tcl
    read_netlist ${_base}.v.gz -top [get_flow_config design_name]
    init_design
  }
}

##############################################################################
# STEP init_innovus_user
##############################################################################
create_flow_step -name init_innovus_user -owner design {
  # Timing attributes  [get_db -category timing && delaycalc]
  #-----------------------------------------------------------------------------
  
  # Extraction attributes  [get_db -category extract_rc]
  #-----------------------------------------------------------------------------
  
  # Floorplan attributes  [get_db -category floorplan]
  #-----------------------------------------------------------------------------
  set_db finish_floorplan_active_objs   [list macro soft_blockage core]
  
  # Placement attributes  [get_db -category place]
  #-----------------------------------------------------------------------------
  
  # Optimization attributes  [get_db -category opt]
  #-----------------------------------------------------------------------------
  
  # Clock attributes  [get_db -category cts]
  #-----------------------------------------------------------------------------
  
  # Routing attributes  [get_db -category route]
  #-----------------------------------------------------------------------------
}
