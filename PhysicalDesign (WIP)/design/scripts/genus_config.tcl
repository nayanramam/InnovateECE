# Generated using: Flowkit 23.10-a010_1
################################################################################
# Genus attributes
#
#  Flow_steps used to drive tool behavior.  Most typically these are root level
#  attributes.  All root attributes can be listed by using 'report_obj -all' or
#  by category using 'report_obj -all -verbose'
#
#  Further attribute help can be obtained by using the command 'help <ATTRIBUTE>'
#
#  Two flow_steps are provided to allow users to specify tool level configs.
#  Users may add additional flow_steps to the file which also direct tool behaviour.
#
#    init_elaborate:  specify tool settings before a design has been loaded.  These are
#                      typically attributes in the 'hdl' and 'lib_*' categories.
#
#    init_genus_user: specify tool settings after a design has been loaded via init_design
#
################################################################################

##############################################################################
# STEP init_elaborate
##############################################################################
create_flow_step -name init_elaborate -owner design {
  # HDL attributes [get_db -category hdl]
  #-----------------------------------------------------------------------------
  
  # Low Power attributes [get_db -category lp_cg]
  #-----------------------------------------------------------------------------
  <%? {lp_insert_clock_gating} return [list set_db lp_insert_clock_gating [get_flow_config lp_insert_clock_gating]] %>
}

##############################################################################
# STEP init_genus_user
##############################################################################
create_flow_step -name init_genus_user -owner design {
  set_db heartbeat 300
  set_db max_cpus_per_server 16
  # Timing attributes  [get_db -category tim]
  #-----------------------------------------------------------------------------
  set_db timing_apply_default_primary_input_assertion true
  set_db timing_analysis_async_checks     async

  # Optimization attributes  [get_db -category netlist]
  #-----------------------------------------------------------------------------
  # Core has no output ports; prevent Genus from removing all internal logic
  # via the "doesn't drive primary outputs" optimization (GLO-34).
  set_db delete_unloaded_insts false

  # Datapath attributes  [get_db -category dp]
  #-----------------------------------------------------------------------------

  # Leakage Power attributes  [get_db -category lp_opt lib_ui]
  #-----------------------------------------------------------------------------

}

##############################################################################
# STEP block_finish (design override)
#
# The Cadence-owned block_finish unconditionally sets flow_write_db_common=true
# for syn_opt flows, causing write_db -common (CDB format) to be attempted.
# In Genus 25.x with a traditional synthesis flow (use_common_db=0, non-iSpatial),
# this fails with DATABASE-141 because the design state does not satisfy CDB
# requirements, leaving pnr/Core.db missing and breaking Innovus floorplan
# (IMPIMEX-7331).
#
# This design-owned override adds the use_common_db feature gate so write_db
# -common is only attempted when the flow was actually configured for CDB handoff.
##############################################################################
create_flow_step -name block_finish -owner design -write_db -categories flow {
  apply {{} {
    set_db flow_report_name [get_db [lindex [get_db flow_hier_path] end] .name]
    if {[is_flow -inside flow:syn_opt] && [get_feature use_common_db]} {
      set_db flow_write_db_common true
    }
    if {[get_db flow_branch] ne ""} {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_branch]_[get_db flow_report_name]]
    } else {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_report_name]]
    }
    set_db flow_spef_directory $out_dir
    catch {report_obj -tcl} flow_root_config
    if {[dict exists $flow_root_config root:/]} {
      set flow_root_config [dict get $flow_root_config root:/]
    } elseif {[dict exists $flow_root_config root:]} {
      set flow_root_config [dict get $flow_root_config root:]
    } else {
    }
    foreach key [dict keys $flow_root_config] {
      if {[string length [dict get $flow_root_config $key]] > 200} {
        dict set flow_root_config $key "\[long value truncated\]"
      }
    }
    set_metric -name flow.root_config -value $flow_root_config
  }}
}
