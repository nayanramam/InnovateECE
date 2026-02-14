#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 25.11-s095_1
## Generated using: Flowkit 25.10-b003_1
## Written on 16:57:31 07-Oct 2025
#############################################################
#####   Flow Definitions   ##################################

create_flow -name init_design -tool genus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {read_mmmc read_physical read_hdl read_power_intent run_init_design}
if {[is_attribute run_count -obj_type flow]} {set_db flow:init_design .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:init_design .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:init_design .feature_values {}}

create_flow -name init_genus -tool genus -start_steps {} -end_steps {} -owner cadence {init_genus_yaml init_genus_user}
if {[is_attribute run_count -obj_type flow]} {set_db flow:init_genus .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:init_genus .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:init_genus .feature_values {}}

create_flow -name syn_generic -tool genus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_elaborate init_design init_genus set_dont_use commit_power_intent run_syn_generic block_finish flow_step:schedule_syn_generic_report_synth}
if {[is_attribute run_count -obj_type flow]} {set_db flow:syn_generic .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:syn_generic .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:syn_generic .feature_values {}}

create_flow -name syn_map -tool genus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_genus run_syn_map block_finish flow_step:schedule_syn_map_report_synth}
if {[is_attribute run_count -obj_type flow]} {set_db flow:syn_map .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:syn_map .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:syn_map .feature_values {}}

create_flow -name syn_opt -tool genus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_genus run_syn_opt block_finish flow_step:schedule_syn_opt_report_synth}
if {[is_attribute run_count -obj_type flow]} {set_db flow:syn_opt .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:syn_opt .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:syn_opt .feature_values {}}

create_flow -name init_innovus -tool innovus -start_steps {} -end_steps {} -owner cadence {init_innovus_yaml init_innovus_user}
if {[is_attribute run_count -obj_type flow]} {set_db flow:init_innovus .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:init_innovus .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:init_innovus .feature_values {}}

create_flow -name floorplan -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_innovus init_floorplan commit_power_intent add_tracks block_finish write_output_screenshot flow_step:schedule_floorplan_report_floorplan}
if {[is_attribute run_count -obj_type flow]} {set_db flow:floorplan .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:floorplan .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:floorplan .feature_values {}}

create_flow -name prects -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_innovus add_clock_spec add_clock_route_types commit_route_types run_place_opt block_finish write_output_screenshot flow_step:schedule_prects_report_prects}
if {[is_attribute run_count -obj_type flow]} {set_db flow:prects .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:prects .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:prects .feature_values {}}

create_flow -name cts -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_innovus add_clock_tree add_tieoffs block_finish write_output_screenshot flow_step:schedule_cts_report_postcts}
if {[is_attribute run_count -obj_type flow]} {set_db flow:cts .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:cts .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:cts .feature_values {}}

create_flow -name postcts -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_innovus run_opt_postcts_hold block_finish write_output_screenshot flow_step:schedule_postcts_report_postcts}
if {[is_attribute run_count -obj_type flow]} {set_db flow:postcts .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:postcts .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:postcts .feature_values {}}

create_flow -name route -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_innovus add_fillers run_route block_finish write_output_screenshot flow_step:schedule_route_report_postroute}
if {[is_attribute run_count -obj_type flow]} {set_db flow:route .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:route .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:route .feature_values {}}

create_flow -name postroute -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {block_start init_innovus run_opt_postroute remove_blockages_halos fix_antenna fix_drc block_finish write_output_files write_output_screenshot flow_step:schedule_postroute_report_postroute innovus_to_tempus innovus_to_quantus}
if {[is_attribute run_count -obj_type flow]} {set_db flow:postroute .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:postroute .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:postroute .feature_values {}}

create_flow -name eco -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {eco_start init_innovus init_eco run_place_eco run_route_eco eco_finish flow_step:schedule_eco_report_postroute innovus_to_tempus innovus_to_quantus flow_step:schedule_eco_eco_signoff}
if {[is_attribute run_count -obj_type flow]} {set_db flow:eco .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:eco .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:eco .feature_values {}}

create_flow -name report_synth -tool genus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {report_start init_genus report_area_genus report_late_summary_genus report_late_paths report_power_genus report_finish}
if {[is_attribute run_count -obj_type flow]} {set_db flow:report_synth .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:report_synth .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:report_synth .feature_values {}}

create_flow -name report_floorplan -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {report_start init_innovus report_check_design report_area_innovus report_route_drc report_finish}
if {[is_attribute run_count -obj_type flow]} {set_db flow:report_floorplan .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:report_floorplan .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:report_floorplan .feature_values {}}

create_flow -name report_prects -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {report_start init_innovus report_check_design report_area_innovus report_late_summary_innovus report_late_paths report_power_innovus report_finish}
if {[is_attribute run_count -obj_type flow]} {set_db flow:report_prects .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:report_prects .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:report_prects .feature_values {}}

create_flow -name report_postcts -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {report_start init_innovus report_check_design report_area_innovus report_early_summary_innovus report_early_paths report_late_summary_innovus report_late_paths report_clock_timing report_power_innovus report_finish}
if {[is_attribute run_count -obj_type flow]} {set_db flow:report_postcts .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:report_postcts .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:report_postcts .feature_values {}}

create_flow -name report_postroute -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {report_start init_innovus report_check_design report_area_innovus report_early_summary_innovus report_early_paths report_late_summary_innovus report_late_paths report_clock_timing report_power_innovus report_route_drc report_route_density report_finish}
if {[is_attribute run_count -obj_type flow]} {set_db flow:report_postroute .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:report_postroute .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:report_postroute .feature_values {}}

create_flow -name extract -tool flowtool -start_steps {} -end_steps {} -owner cadence run_quantus
if {[is_attribute run_count -obj_type flow]} {set_db flow:extract .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:extract .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:extract .feature_values {}}

create_flow -name init_tempus -tool tempus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {init_tempus_yaml init_tempus_user}
if {[is_attribute run_count -obj_type flow]} {set_db flow:init_tempus .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:init_tempus .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:init_tempus .feature_values {}}

create_flow -name sta -tool tempus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence {signoff_start init_tempus read_parasitics set_propagated_clocks update_timing check_timing report_late_summary report_late_paths report_early_summary report_early_paths signoff_finish}
if {[is_attribute run_count -obj_type flow]} {set_db flow:sta .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:sta .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:sta .feature_values {}}

create_flow -name init_voltus -tool voltus -start_steps {} -end_steps {} -owner cadence {init_voltus_yaml init_voltus_user}
if {[is_attribute run_count -obj_type flow]} {set_db flow:init_voltus .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:init_voltus .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:init_voltus .feature_values {}}

create_flow -name signoff -tool innovus -start_steps {} -end_steps {} -owner cadence schedule_signoff_subflows
if {[is_attribute run_count -obj_type flow]} {set_db flow:signoff .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:signoff .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:signoff .feature_values {}}

create_flow -name synthesis -tool genus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence -skip_metric {syn_generic syn_map syn_opt}
if {[is_attribute run_count -obj_type flow]} {set_db flow:synthesis .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:synthesis .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:synthesis .feature_values {}}

create_flow -name implementation -tool innovus -tool_options -disable_user_startup -start_steps {} -end_steps {} -owner cadence -skip_metric {floorplan prects cts postcts route postroute}
if {[is_attribute run_count -obj_type flow]} {set_db flow:implementation .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:implementation .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:implementation .feature_values {}}

create_flow -name block -start_steps {} -end_steps {} -owner cadence -skip_metric {synthesis implementation}
if {[is_attribute run_count -obj_type flow]} {set_db flow:block .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:block .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:block .feature_values {}}

create_flow -name flow_current -start_steps {} -end_steps {} -skip_metric {synthesis implementation}
if {[is_attribute run_count -obj_type flow]} {set_db flow:flow_current .run_count 0}
if {[is_attribute features -obj_type flow]} {set_db flow:flow_current .features {}}
if {[is_attribute feature_values -obj_type flow]} {set_db flow:flow_current .feature_values {}}

#############################################################
#####   Step Definitions   ##################################

create_flow_step -name read_mmmc -check {
  apply {{} {
    #- Check: library_sets are defined
    check "[llength [get_flow_config -quiet library_sets]]" "A library_set object is required for MMMC.  None were found in the MMMC section of setup.yaml."
    foreach name [dict keys [get_flow_config -quiet library_sets]] {
      #- Check: library_sets do not have both timing and link/target libraries defined
      check "([llength [get_flow_config -quiet library_sets $name library_files]] || [llength [get_flow_config -quiet library_sets $name link_library_files]] || [llength [get_flow_config -quiet library_sets $name target_library_files]])" "Timing files are required for library_set: $name.  Must specify either library_files or link_library_files and target_library_files."
      check "!([llength [get_flow_config -quiet library_sets $name library_files]] && [llength [get_flow_config -quiet library_sets $name link_library_files]])" "The library specification for library_set: $name is incorrect.  Can not use library_files and link_library_files at the same time."
      check "!([llength [get_flow_config -quiet library_sets $name library_files]] && [llength [get_flow_config -quiet library_sets $name target_library_files]])" "The library specification for library_set: $name is incorrect.  Can not use library_files and target_library_files at the same time."
      check "!(([llength [get_flow_config -quiet library_sets $name link_library_files]] ? 1 : 0) ^ ([llength [get_flow_config -quiet library_sets $name target_library_files]] ? 1 : 0))" "The library specification for library_set: $name is incorrect.  Must specify both link_library_files and target_library_files."
      #- Check: library_sets reference valid files
      foreach file [join [get_flow_config -quiet library_sets $name library_files]] {
        check "[file exists $file] && [file readable $file]" "The library file: $file was not found or is not readable for library_set: $name"
      }
      foreach file [join [get_flow_config -quiet library_sets $name link_library_files]] {
        check "[file exists $file] && [file readable $file]" "The link library file: $file was not found or is not readable for library_set: $name"
      }
      foreach file [join [get_flow_config -quiet library_sets $name target_library_files]] {
        check "[file exists $file] && [file readable $file]" "The target library file: $file was not found or is not readable for library_set: $name"
      }
      foreach file [get_flow_config -quiet library_sets $name aocv_files] {
        check "[file exists $file] && [file readable $file]" "The aocv: $file was not found or is not readable for library_set: $name"
      }
      foreach file [get_flow_config -quiet library_sets $name lvf_files] {
        check "[file exists $file] && [file readable $file]" "The lvf file: $file was not found or is not readable for library_set: $name"
      }
      foreach file [get_flow_config -quiet library_sets $name si_files] {
        check "[file exists $file] && [file readable $file]" "The si file: $file was not found or is not readable for library_set: $name"
      }
      foreach file [get_flow_config -quiet library_sets $name socv_files] {
        check "[file exists $file] && [file readable $file]" "The socv file: $file was not found or is not readable for library_set: $name"
      }
    }
    #- Check: rc_corners are defined
    check "[llength [get_flow_config -quiet rc_corners]]" "A rc_corner object is required for MMMC.  None were found in the MMMC section of setup.yaml."
    foreach name [dict keys [get_flow_config -quiet rc_corners]] {
      foreach file [get_flow_config -quiet rc_corners $name qrc_tech_file] {
        check "[file exists $file] && [file readable $file]" "The qrc_tech file: $file was not found or is not readable for rc_corner: $name"
      }
    }
    #- Check: timing_conditions are defined
    check "[llength [get_flow_config -quiet timing_conditions]]" "A timing_condition object is required for MMMC.  None were found in the MMMC section of setup.yaml."
    foreach name [dict keys [get_flow_config -quiet timing_conditions]] {
      check "[llength [get_flow_config -quiet timing_conditions $name library_sets]]" "No library_sets found for timing_condition: $name"
      foreach tc_lib_set [get_flow_config -quiet timing_conditions $name library_sets] {
        check "[dict exists [get_flow_config -quiet library_sets] $tc_lib_set]" "The timing_condition: $name, referenced a library_set: $tc_lib_set which is not found in the library_set section of the setup.yaml\n  Possible library_sets are: [dict keys [get_flow_config -quiet library_sets]]"
      }
    }
    #- Check: delay_corners are defined
    check "[llength [get_flow_config -quiet delay_corners]]" "A delay_corner objects is required for MMMC.  None were found in the MMMC section of setup.yaml."
    foreach name [dict keys [get_flow_config delay_corners]] {
      #- Check: delay_corner has early and late rc_corners specified
      check "[llength [get_flow_config -quiet delay_corners $name rc_corner early]] && [llength [get_flow_config -quiet delay_corners $name rc_corner late]]" "The rc_corner specification for delay_corner: $name is incorrect.  Need both early and late rc_corner specified in MMMC section of setup.yaml."
      check "[dict exists [get_flow_config -quiet rc_corners] [get_flow_config delay_corners $name rc_corner early]]" "An early rc_corner was not found for delay_corner: $name\n  Possible rc_corners are: [dict keys [get_flow_config -quiet rc_corners]]"
      check "[dict exists [get_flow_config -quiet rc_corners] [get_flow_config delay_corners $name rc_corner late]]" "A late rc_corner was not found for delay_corner: $name\n  Possible rc_corners are: [dict keys [get_flow_config -quiet rc_corners]]"
      #- Check: delay_corner has early and late timing_conditions specified
      check "[llength [get_flow_config -quiet delay_corners $name timing_condition early]] && [llength [get_flow_config -quiet delay_corners $name timing_condition late]]" "The timing_condition specification for delay_corner: $name is incorrect.  Need both early and late timing_condition specified in MMMC section of setup.yaml."
      foreach tc [get_flow_config -quiet delay_corners $name timing_condition early] {
        if {[regexp {@(\S+)$} $tc match tc_name]} {} else {set tc_name $tc}
        check "[dict exists [get_flow_config -quiet timing_conditions] $tc_name]" "The specified early timing_condition $tc_name was not found for delay_corner $name\n  Possible timing_conditions are: [dict keys [get_flow_config -quiet timing_conditions]]"
      }
      foreach tc [get_flow_config -quiet delay_corners $name timing_condition late] {
        if {[regexp {@(\S+)$} $tc match tc_name]} {} else {set tc_name $tc}
        check "[dict exists [get_flow_config -quiet timing_conditions] $tc_name]" "The specified late timing_condition $tc_name was not found for delay_corner $name\n  Possible timing_conditions are: [dict keys [get_flow_config -quiet timing_conditions]]"
      }
    }
    #- Check: constraint_modes are defined
    check "[llength [get_flow_config -quiet constraint_modes]]" "A constraint_mode object is required for MMMC.  None were found in the MMMC section of setup.yaml."
    foreach name [dict keys [get_flow_config -quiet constraint_modes]] {
      #- Check: Constraint_mode has an SDC file
      check "[llength [get_flow_config -quiet constraint_modes $name sdc_files]]" "A list of sdc_files are required for constraint_mode: $name"
      foreach file [get_flow_config -quiet constraint_modes $name sdc_files] {
        check "[file exists $file] && [file readable $file]" "The sdc file: $file was not found or is not readable for constraint_mode: $name"
      }
    }
    #- Check: analysis_views are defined
    check "[llength [get_flow_config -quiet analysis_views]]" "An analysis_view objects is required for MMMC.  None were found in the MMMC section of setup.yaml."
    foreach name [dict keys [get_flow_config -quiet analysis_views]] {
      #- Check: Analysis_view has a constraint_mode
      check "[dict exists [get_flow_config -quiet constraint_modes] [get_flow_config analysis_views $name constraint_mode]]" "A constraint_mode was not found for analysis_view: $name\n  Possible constraint_modes are: [dict keys [get_flow_config -quiet constraint_modes]]"
      #- Check: Analysis_view has a delay_corner
      check "[dict exists [get_flow_config -quiet delay_corners] [get_flow_config analysis_views $name delay_corner]]" "A delay_corner was not found for analysis_view: $name\n  Possible delay_corners are: [dict keys [get_flow_config -quiet delay_corners]]"
      #- Sort views by purpose
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_setup]]} {
        lappend analysis_view_is_setup_list $name
      }
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_hold]]} {
        lappend analysis_view_is_hold_list $name
      }
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_leakage]]} {
        lappend analysis_view_is_leakage_list $name
      }
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_dynamic]]} {
        lappend analysis_view_is_dynamic_list $name
      }
    }
    if {[get_feature setup_views] ne ""} {
      set analysis_view_is_setup_list [list [get_feature setup_views]]
    }
    if {[get_feature hold_views] ne ""} {
      set analysis_view_is_hold_list [list [get_feature hold_views]]
    }
    if {[get_feature leakage_view] ne ""} {
      set analysis_view_is_leakage_list [list [get_feature leakage_view]]
    }
    if {[get_feature dynamic_view] ne ""} {
      set analysis_view_is_dynamic_list [list [get_feature dynamic_view]]
    }
  
    #- Check: Analysis_view has an active setup view
    check "[info exists analysis_view_is_setup_list]" "At least 1 view is required for setup analysis"
  
    #- Check: Analysis_view has an active hold view
    check "[info exists analysis_view_is_hold_list]" "At least 1 view is required for hold analysis"
  
    #- Check: Analysis_view has no more than one leakage view
    if {[info exists analysis_view_is_leakage_list]} {
      check "[llength $analysis_view_is_leakage_list] == 1" "Only one leakage view can be specified. Please select only one of the views specified: $analysis_view_is_leakage_list"
    }
    #- Check: Analysis_view has no more than one dynamic view
    if {[info exists analysis_view_is_dynamic_list]} {
      check "[llength $analysis_view_is_dynamic_list] == 1" "Only one dynamic view can be specified. Please select only one of the views specified: $analysis_view_is_dynamic_list"
    }
    #- Check: Analysis_view has both leakage andy dynamic views when specified
    if {[info exists analysis_view_is_leakage_list] || [info exists analysis_view_is_dynamic_list]} {
      check "[info exists analysis_view_is_leakage_list] && [info exists analysis_view_is_dynamic_list]" "Must specify both a leakage and a dynamic view when either is selected."
    }
  }}
} -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    set FH [open [file join [get_db flow_db_directory] [get_db flow_report_name].mmmc_config.tcl] w]
  
    puts $FH "##############################################################################"
    puts $FH "## LIBRARY SETS"
    puts $FH "##############################################################################"
    foreach name [dict keys [get_flow_config library_sets]] {
  
      set library_files [get_flow_config -quiet library_sets $name library_files]
      set link_files    [get_flow_config -quiet library_sets $name link_library_files]
      set target_files  [get_flow_config -quiet library_sets $name target_library_files]
      set aocv_files    [get_flow_config -quiet library_sets $name aocv_files]
      set lvf_files     [get_flow_config -quiet library_sets $name lvf_files]
      set si_files      [get_flow_config -quiet library_sets $name si_files]
      set socv_files    [get_flow_config -quiet library_sets $name socv_files]
  
      puts $FH "create_library_set \\"
      puts $FH "  -name $name \\"
      #- define timing_files (.ldb/.lib)
      if {[llength $library_files] > 0} {
        puts $FH "  -timing \\"
        puts $FH "    \[list \\"
        if {[llength $library_files] != [llength [join $library_files]]} {
          foreach inner_list $library_files {
            puts $FH "      \[list \\"
            foreach file $inner_list {
              puts $FH "        [file normalize $file] \\"
            }
            puts $FH "      \] \\"
          }
        } else {
          foreach file $library_files {
            puts $FH "      [file normalize $file] \\"
          }
        }
        if {[llength [concat $aocv_files $lvf_files $si_files $socv_files]] > 0 } {
          puts $FH "    \] \\"
        } else {
          puts $FH "    \]"
        }
      }
      #- define link/target timing_files (.ldb/.lib)
      if {[llength $link_files] > 0 && [llength $target_files] > 0} {
        puts $FH "  -link_timing \\"
        puts $FH "    \[list \\"
        foreach file $link_files {
          puts $FH "      [file normalize $file] \\"
        }
        puts $FH "    \] \\"
        puts $FH "  -target_timing \\"
        puts $FH "    \[list \\"
        foreach file $target_files {
          puts $FH "      [file normalize $file] \\"
        }
        if {[llength [concat $aocv_files $lvf_files $si_files $socv_files]] > 0 } {
          puts $FH "    \] \\"
        } else {
          puts $FH "    \]"
        }
      }
      #- define aocv files
      if {[llength $aocv_files] > 0 } {
        puts $FH "  -aocv \\"
        puts $FH "    \[list \\"
        foreach file $aocv_files {
          puts $FH "      [file normalize $file] \\"
        }
        if {[llength [concat $lvf_files $si_files $socv_files]] > 0 } {
          puts $FH "    \] \\"
        } else {
          puts $FH "    \]"
        }
      }
      #- define lvf files
      if {[llength $lvf_files] > 0 } {
        puts $FH "  -lvf \\"
        puts $FH "    \[list \\"
        foreach file $lvf_files {
          puts $FH "      [file normalize $file] \\"
        }
        if {[llength [concat $si_files $socv_files]] > 0 } {
          puts $FH "    \] \\"
        } else {
          puts $FH "    \]"
        }
      }
      #- define si files (.cdb)
      if {[llength $si_files] > 0 } {
        puts $FH "  -si     \\"
        puts $FH "    \[list \\"
        foreach file $si_files {
          puts $FH "      [file normalize $file] \\"
        }
        if {[llength [concat $socv_files]] > 0 } {
          puts $FH "    \] \\"
        } else {
          puts $FH "    \]"
        }
      }
      #- define socv files
      if {[llength $socv_files] > 0 } {
        puts $FH "  -socv   \\"
        puts $FH "    \[list \\"
        foreach file $socv_files {
          puts $FH "      [file normalize $file] \\"
        }
        puts $FH "    \]"
      }
      puts $FH ""
    }
    puts $FH ""
    puts $FH "##############################################################################"
    puts $FH "## OPERATING CONDITIONS"
    puts $FH "##############################################################################"
    foreach name [dict keys [get_flow_config -quiet opconds]] {
      set op_cond_process      [get_flow_config -quiet opconds $name process]
      set op_cond_voltage      [get_flow_config -quiet opconds $name voltage]
      set op_cond_temperature  [get_flow_config -quiet opconds $name temperature]
  
      puts $FH "create_opcond \\"
      puts $FH "  -name $name \\"
      if ![string is space $op_cond_process] {
        puts $FH "  -process $op_cond_process \\"
      }
      if ![string is space $op_cond_voltage] {
        puts $FH "  -voltage $op_cond_voltage \\"
      }
      if ![string is space $op_cond_temperature] {
        puts $FH "  -temperature $op_cond_temperature \\"
      }
      puts $FH ""
    }
    puts $FH ""
    puts $FH "###############################################################################"
    puts $FH "### RC CORNERS"
    puts $FH "###############################################################################"
    foreach name [dict keys [get_flow_config rc_corners]] {
      set rc_corner_qrc_tech    [get_flow_config -quiet rc_corners $name qrc_tech_file]
      set rc_corner_temperature [get_flow_config -quiet rc_corners $name temperature]
  
      puts $FH "create_rc_corner \\"
      puts $FH "  -name $name \\"
      if ![string is space $rc_corner_temperature] {
        puts $FH "  -temperature $rc_corner_temperature \\"
      }
      if ![string is space $rc_corner_qrc_tech] {
        puts $FH "  -qrc_tech $rc_corner_qrc_tech"
      }
      puts $FH ""
    }
    puts $FH ""
    puts $FH "##############################################################################"
    puts $FH "## TIMING CONDITIONS"
    puts $FH "##############################################################################"
    foreach name [dict keys [get_flow_config timing_conditions]] {
      set timing_condition_lib_set [get_flow_config -quiet timing_conditions $name library_sets]
      set timing_condition_opcond  [get_flow_config -quiet timing_conditions $name opcond]
      set timing_condition_opcond_lib  [get_flow_config -quiet timing_conditions $name opcond_library]
  
      puts $FH "create_timing_condition \\"
      puts $FH "  -name $name \\"
  
      #- Timing Condition library sets validation
      puts $FH "  -library_sets \\"
      puts $FH "    \[list \\"
      foreach tc_lib_set $timing_condition_lib_set {
        puts $FH "        $tc_lib_set \\"
      }
      if {[llength [concat $timing_condition_opcond $timing_condition_opcond_lib]] > 0 } {
        puts $FH "    \] \\"
      } else {
        puts $FH "    \]"
      }
      if {![string is space $timing_condition_opcond]} {
        if {![string is space $timing_condition_opcond_lib]} {
          puts $FH "  -opcond $timing_condition_opcond \\"
          puts $FH "  -opcond_library $timing_condition_opcond_lib"
        } else {
         puts $FH "  -opcond $timing_condition_opcond"
       }
      }
      puts $FH ""
    }
    puts $FH ""
    puts $FH "###############################################################################"
    puts $FH "### DELAY CORNERS"
    puts $FH "###############################################################################"
    foreach name [dict keys [get_flow_config delay_corners]] {
      set delay_corner_early_rc_corner  [get_flow_config -quiet delay_corners $name rc_corner early]
      set delay_corner_late_rc_corner   [get_flow_config -quiet delay_corners $name rc_corner late]
      set delay_corner_early_timing_condition [get_flow_config -quiet delay_corners $name timing_condition early]
      set delay_corner_late_timing_condition  [get_flow_config -quiet delay_corners $name timing_condition late]
  
      puts $FH "create_delay_corner \\"
      puts $FH "  -name $name \\"
  
      #- define delay_corner -rc_corner
      if {![string is space $delay_corner_early_rc_corner] && ![string is space $delay_corner_late_rc_corner]} {
        if {$delay_corner_early_rc_corner eq $delay_corner_late_rc_corner} {
          puts $FH "  -rc_corner $delay_corner_early_rc_corner \\"
        } else {
          puts $FH "  -early_rc_corner $delay_corner_early_rc_corner \\"
          puts $FH "  -late_rc_corner $delay_corner_late_rc_corner \\"
        }
      }
      #- define delay_corner -timing_condition
      if {![string is space $delay_corner_early_timing_condition] && ![string is space $delay_corner_late_timing_condition]} {
        if {$delay_corner_early_timing_condition eq $delay_corner_late_timing_condition} {
          puts $FH "  -timing_condition [list $delay_corner_early_timing_condition]"
        } else {
          puts $FH "  -early_timing_condition [list $delay_corner_early_timing_condition] \\"
          puts $FH "  -late_timing_condition [list $delay_corner_late_timing_condition]"
        }
      }
      puts $FH ""
    }
    puts $FH ""
    puts $FH "###############################################################################"
    puts $FH "### CONSTRAINT MODES"
    puts $FH "###############################################################################"
    foreach name [dict keys [get_flow_config constraint_modes]] {
      set constraint_mode_sdc       [get_flow_config -quiet constraint_modes $name sdc_files]
      set constraint_mode_tcl_vars  [get_flow_config -quiet constraint_modes $name tcl_variables]
  
      puts $FH "create_constraint_mode \\"
      puts $FH "  -name $name \\"
      #- Constraint_mode -sdc_files
      puts $FH "  -sdc_files \\"
      puts $FH "    \[list \\"
      foreach file $constraint_mode_sdc {
        puts $FH "      [file normalize $file] \\"
      }
      #- Constraint_mode -tcl_vars
      if ![string is space $constraint_mode_tcl_vars] {
        puts $FH "    \] \\"
        puts $FH "  -tcl_variables \{$constraint_mode_tcl_vars\}"
      } else {
        puts $FH "    \]"
      }
      puts $FH ""
    }
    puts $FH ""
    puts $FH "###############################################################################"
    puts $FH "### ANALYSIS VIEWS"
    puts $FH "###############################################################################"
    set analysis_view_is_setup_list   ""
    set analysis_view_is_hold_list    ""
    set analysis_view_is_dynamic_list ""
    set analysis_view_is_leakage_list ""
    foreach name [dict keys [get_flow_config analysis_views]] {
      puts $FH "create_analysis_view \\"
      puts $FH "  -name $name \\"
      puts $FH "  -constraint_mode [get_flow_config -quiet analysis_views $name constraint_mode] \\"
      if {![string is space [get_flow_config -quiet analysis_views $name power_modes]]} {
        puts $FH "  -power_modes [get_flow_config -quiet analysis_views $name power_modes] \\"
      }
      puts $FH "  -delay_corner [get_flow_config -quiet analysis_views $name delay_corner]"
      #- Sort views by purpose
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_setup]]} {
        lappend analysis_view_is_setup_list $name
      }
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_hold]]} {
        lappend analysis_view_is_hold_list $name
      }
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_leakage]]} {
        lappend analysis_view_is_leakage_list $name
      }
      if {[string is true -strict [get_flow_config -quiet analysis_views $name is_dynamic]]} {
        lappend analysis_view_is_dynamic_list $name
      }
      puts $FH ""
    }
  
    #- Override view list with feature values when available
    if {[get_feature setup_views] ne ""} {
      set analysis_view_is_setup_list [get_feature setup_views]
    }
    if {[get_feature hold_views] ne ""} {
      set analysis_view_is_hold_list [get_feature hold_views]
    }
    if {[get_feature leakage_view] ne ""} {
      set analysis_view_is_leakage_list [get_feature leakage_view]
    }
    if {[get_feature dynamic_view] ne ""} {
      set analysis_view_is_dynamic_list [get_feature dynamic_view]
    }
  
    #- Configure the Analysis View
    puts $FH "set_analysis_view \\"
    puts $FH "  -setup   \[list $analysis_view_is_setup_list\] \\"
    if {[llength $analysis_view_is_leakage_list] > 0 && [llength $analysis_view_is_dynamic_list] > 0} {
      puts $FH "  -hold    \[list $analysis_view_is_hold_list\] \\"
      puts $FH "  -leakage \[list $analysis_view_is_leakage_list\] \\"
      puts $FH "  -dynamic \[list $analysis_view_is_dynamic_list\]"
    } elseif {[llength $analysis_view_is_leakage_list] > 0 && [llength $analysis_view_is_dynamic_list] == 0} {
      puts $FH "  -hold    \[list $analysis_view_is_hold_list\] \\"
      puts $FH "  -leakage \[list $analysis_view_is_leakage_list\]"
    } elseif {[llength $analysis_view_is_leakage_list] == 0 && [llength $analysis_view_is_dynamic_list] > 0} {
      puts $FH "  -hold    \[list $analysis_view_is_hold_list\] \\"
      puts $FH "  -dynamic \[list $analysis_view_is_dynamic_list\]"
    } else {
      puts $FH "  -hold    \[list $analysis_view_is_hold_list\]"
    }
    puts $FH ""
    close $FH
  
    #- Read MMMC file
    if {[is_flow -inside flow:init_design]} {
      read_mmmc [file join [get_db flow_db_directory] [get_db flow_report_name].mmmc_config.tcl]
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:read_mmmc .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:read_mmmc .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:read_mmmc .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:read_mmmc .feature_values {}}

create_flow_step -name read_physical -check {
  apply {{} {
    if {[llength [get_flow_config -quiet init_physical_files lef_files]] && [llength [get_flow_config -quiet init_physical_files oa_ref_libs]]} {
      check "0" "The read_physical specification is incorrect in setup.yaml. Please specify either lef_files or oa_ref_libs but not both."
    } elseif {![string is space [get_flow_config -quiet init_physical_files oa_search_libs]]} {
      check "[llength [get_flow_config -quiet init_physical_files oa_ref_libs]]" "Can not specify oa_search_libs without specifying oa_ref_libs for read_physical section in setup.yaml"
      check "[llength [get_flow_config -quiet init_physical_files lef_files]] == 0" "Can not specify oa_search_libs with lef_files for read_physical section in setup.yaml.  Only use oa_search_libs when specifying oa_ref_libs."
    } elseif {[llength [get_flow_config -quiet init_physical_files lef_files]] || [llength [get_flow_config -quiet init_physical_files oa_ref_libs]]} {
      check "!([llength [get_flow_config -quiet init_physical_files lef_files]] &&  [llength [get_flow_config -quiet init_physical_files oa_ref_libs]])" "The read_physical specification is incomplete in setup.yaml.  Please specify either lef_files or oa_ref_libs."
      #- check that lef_files are readable by user
      if {[llength [get_flow_config -quiet init_physical_files lef_files]]} {
        foreach file [get_flow_config -quiet init_physical_files lef_files] {
          check "[file exists $file] && [file readable $file]" "The file: $file was not found or is not readable for init_physical_files lef_files section in setup.yaml"
        }
      }
    } else {
      check "[llength [get_flow_config -quiet init_physical_files lef_files]] || [llength [get_flow_config -quiet init_physical_files oa_ref_libs]]" "The read_physical specification is incomplete in setup.yaml. Please specify either lef_files or oa_ref_libs."
    }
  }}
} -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    if {![string is space [get_flow_config -quiet init_physical_files lef_files]]} {
      read_physical -lef [get_flow_config init_physical_files lef_files]
    }
    if {![string is space [get_flow_config -quiet init_physical_files oa_ref_libs]]} {
      set flow_startup_directory [get_db flow_startup_directory]
      set flow_top_directory [file normalize [get_db flow_working_directory]]
      if {![string is space [get_flow_config -quiet init_physical_files oa_search_libs]]} {
        set cmd "[list read_physical -oa_ref_libs [get_flow_config init_physical_files oa_ref_libs] -oa_search_libs [get_flow_config init_physical_files oa_search_libs]]"
      } else {
        set cmd "[list read_physical -oa_ref_libs [get_flow_config init_physical_files oa_ref_libs]]"
      }
  
      if {$flow_startup_directory ne $flow_top_directory} {
        cd $flow_startup_directory
        eval $cmd
        cd $flow_top_directory
      } else {
        eval $cmd
      }
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:read_physical .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:read_physical .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:read_physical .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:read_physical .feature_values {}}

create_flow_step -name read_power_intent -check {
  apply {{} {
    #check "[llength [get_flow_config -quiet init_power_intent_files]]" "The init_power_intent_files specification is incomplete in setup.yaml"
    if {![string is space [get_flow_config -quiet init_power_intent_files cpf]]} {
      foreach file [get_flow_config -quiet init_power_intent_files cpf] {
        check "[file exists $file] && [file readable $file]" "The CPF power_intent file: $file was not found or is not readable init_power_intent_files section in setup.yaml"
      }
    }
    if {![string is space [get_flow_config -quiet init_power_intent_files 1801]]} {
      foreach file [get_flow_config -quiet init_power_intent_files 1801] {
        check "[file exists $file] && [file readable $file]" "The 1801 power_intent file: $file was not found or is not readable init_power_intent_files section in setup.yaml"
      }
    }
  }}
} -start_steps {} -end_steps {} -owner cadence {
  if {![string is space [get_flow_config -quiet init_power_intent_files 1801]]} {
    read_power_intent -1801 [get_flow_config init_power_intent_files 1801]
  }
  if {![string is space [get_flow_config -quiet init_power_intent_files cpf]]} {
    read_power_intent -cpf [get_flow_config init_power_intent_files cpf]
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:read_power_intent .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:read_power_intent .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:read_power_intent .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:read_power_intent .feature_values {}}

create_flow_step -name run_init_design -save_db -start_steps {} -end_steps {} -owner cadence {
  <%? {init_ground_nets} return [list set_db init_ground_nets [get_flow_config init_ground_nets]] %>
  <%? {init_power_nets} return [list set_db init_power_nets [get_flow_config init_power_nets]] %>
  
  init_design
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_init_design .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_init_design .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_init_design .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_init_design .feature_values {}}

create_flow_step -name commit_power_intent -start_steps {} -end_steps {} -owner cadence {
  if {[join [dict values [get_db init_power_intent_files]]] ne {}} {
    #- apply power intent rules
    if {[is_flow -quiet -inside synthesis]} {
      apply_power_intent -summary
    }
  
    #- commit power intent rules
    commit_power_intent
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:commit_power_intent .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:commit_power_intent .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:commit_power_intent .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:commit_power_intent .feature_values {}}

create_flow_step -name init_genus_yaml -start_steps {} -end_steps {} -owner cadence {
  # Timing attributes  [get_db -category tim]
  #-------------------------------------------------------------------------------
  set_db ocv_mode                         true
  
  # Routing attributes  [get_db -category route]
  #-------------------------------------------------------------------------------
  <%? {routing_layers top} return [list set_db design_top_routing_layer [get_flow_config routing_layers top]] %>
  <%? {routing_layers bottom} return [list set_db design_bottom_routing_layer [get_flow_config routing_layers bottom]] %>
  
  # Optimization attributes  [get_db -category netlist]
  #-------------------------------------------------------------------------------
  <%? {design_flow_effort} return [list set_db design_flow_effort [get_flow_config design_flow_effort]] %>
  <%? {design_power_effort} return [list set_db design_power_effort [get_flow_config design_power_effort]] %>
  <%? {opt_leakage_to_dynamic_ratio} return [list set_db opt_leakage_to_dynamic_ratio [get_flow_config opt_leakage_to_dynamic_ratio]] %>
  <%? {cts_buffer_cells} return [list set_db cts_buffer_cells [get_flow_config cts_buffer_cells]] %>
  <%? {cts_inverter_cells} return [list set_db cts_inverter_cells [get_flow_config cts_inverter_cells]] %>
  <%? {cts_clock_gating_cells} return [list set_db cts_clock_gating_cells [get_flow_config cts_clock_gating_cells]] %>
  <%? {cts_logic_cells} return [list set_db cts_logic_cells [get_flow_config cts_logic_cells]] %>
  <%? {lp_clock_gating_min_flops} return [list set_db [get_db designs [get_flow_config design_name]] .lp_clock_gating_min_flops [get_flow_config lp_clock_gating_min_flops]] %>
  <%? {lp_clock_gating_max_flops} return [list set_db [get_db designs [get_flow_config design_name]] .lp_clock_gating_max_flops [get_flow_config lp_clock_gating_max_flops]] %>
  <%? {lp_clock_gating_auto_path_adjust} return [list set_db [get_db designs [get_flow_config design_name]] .lp_clock_gating_auto_path_adjust [get_flow_config lp_clock_gating_auto_path_adjust]] %>
  
  # Physical attributes  [get_db -category phys]
  #-------------------------------------------------------------------------------
  <%? {design_process_node} return [list set_db design_process_node [get_flow_config design_process_node]] %>
  <%? {design_tech_node} return [list set_db design_tech_node [get_flow_config design_tech_node]] %>
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_genus_yaml .run_count 1}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_genus_yaml .status success}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_genus_yaml .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_genus_yaml .feature_values {}}

create_flow_step -name init_innovus_yaml -check {
  check "!([string is true -strict [get_flow_config -quiet timing_analysis_aocv]] && [string is true -strict [get_flow_config -quiet timing_analysis_socv]])" "Select only one of timing_analysis_socv or timing_analysis_aocv"
  if {[llength [get_flow_config -quiet routing_layers top]]} {
    check "![string is integer [get_flow_config -quiet routing_layers top]]" "The route_design top layer must be an string.  Correct route_design_layers section in setup.yaml"
  }
  if {[llength [get_flow_config -quiet routing_layers bottom]]} {
    check "![string is integer [get_flow_config -quiet routing_layers bottom]]" "The route_design bottom layer must be an string.  Correct route_design_layers section in setup.yaml"
  }
} -start_steps {} -end_steps {} -owner cadence {
  if {[get_feature report_lec]} {
    # Init attributes  [get_db -category init]
    #-------------------------------------------------------------------------------
    set_db write_lec_directory_naming_style "fv/%s/[get_db flow_report_name]"
    
  }
  # Design attributes  [get_db -category design]
  #-------------------------------------------------------------------------------
  <%? {design_process_node} return [list set_db design_process_node [get_flow_config design_process_node]] %>
  <%? {design_tech_node} return [list set_db design_tech_node [get_flow_config design_tech_node]] %>
  <%? {routing_layers top} return [list set_db design_top_routing_layer [get_flow_config routing_layers top]] %>
  <%? {routing_layers bottom} return [list set_db design_bottom_routing_layer [get_flow_config routing_layers bottom]] %>
  <%? {design_flow_effort} return [list set_db design_flow_effort [get_flow_config design_flow_effort]] %>
  <%? {design_power_effort} return [list set_db design_power_effort [get_flow_config design_power_effort]] %>
  
# Timing attributes  [get_db -category timing && delaycalc]
#-------------------------------------------------------------------------------
set_db timing_analysis_cppr           both
set_db timing_analysis_type           ocv
<%? {timing_analysis_aocv} return [list set_db timing_analysis_aocv [get_flow_config timing_analysis_aocv]] %>
<%? {timing_analysis_socv} return [list set_db timing_analysis_socv [get_flow_config timing_analysis_socv]] %>
if {[get_feature report_pba]} {
  set_db timing_path_based_enable_mean_only_max_cppr_propagated true
}

# Extraction attributes  [get_db -category extract_rc]
#-------------------------------------------------------------------------------
if {[is_flow -after route.block_finish]} {
  set_db delaycal_enable_si           true
  set_db extract_rc_engine            post_route
}

# Tieoff attributes  [get_db -category add_tieoffs]
#-------------------------------------------------------------------------------
<%? {add_tieoffs_cells} return [list set_db add_tieoffs_cells [get_flow_config add_tieoffs_cells]] %>
<%? {add_tieoffs_max_distance} return [list set_db add_tieoffs_max_distance [get_flow_config add_tieoffs_max_distance]] %>
<%? {add_tieoffs_max_fanout} return [list set_db add_tieoffs_max_fanout [get_flow_config add_tieoffs_max_fanout]] %>

# Optimization attributes  [get_db -category opt]
#-------------------------------------------------------------------------------
set_db opt_new_inst_prefix            "[get_db flow_report_name]_"
<%? {opt_leakage_to_dynamic_ratio} return [list set_db opt_leakage_to_dynamic_ratio [get_flow_config opt_leakage_to_dynamic_ratio]] %>

# Clock attributes  [get_db -category cts]
#-------------------------------------------------------------------------------
<%? {cts_target_skew} return [list set_db cts_target_skew [get_flow_config cts_target_skew]] %>
<%? {cts_target_max_transition_time top} return [list set_db cts_target_max_transition_time_top [get_flow_config cts_target_max_transition_time top]] %>
<%? {cts_target_max_transition_time trunk} return [list set_db cts_target_max_transition_time_trunk [get_flow_config cts_target_max_transition_time trunk]] %>
<%? {cts_target_max_transition_time leaf} return [list set_db cts_target_max_transition_time_leaf [get_flow_config cts_target_max_transition_time leaf]] %>

<%? {cts_buffer_cells} return [list set_db cts_buffer_cells [get_flow_config cts_buffer_cells]] %>
<%? {cts_inverter_cells} return [list set_db cts_inverter_cells [get_flow_config cts_inverter_cells]] %>
<%? {cts_clock_gating_cells} return [list set_db cts_clock_gating_cells [get_flow_config cts_clock_gating_cells]] %>
<%? {cts_logic_cells} return [list set_db cts_logic_cells [get_flow_config cts_logic_cells]] %>

# Filler attributes  [get_db -category add_fillers]
#-------------------------------------------------------------------------------
<%? {add_fillers_cells} return [list set_db add_fillers_cells [get_flow_config add_fillers_cells]] %>

# Routing attributes  [get_db -category route]
#-------------------------------------------------------------------------------
<%? {route_design_antenna_cell_name} return [list set_db route_design_antenna_diode_insertion true] %>
<%? {route_design_antenna_cell_name} return [list set_db route_design_antenna_cell_name [get_flow_config route_design_antenna_cell_name]] %>
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_innovus_yaml .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_innovus_yaml .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_innovus_yaml .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_innovus_yaml .feature_values {}}

create_flow_step -name init_tempus_yaml -check {
  check "!([string is true -strict [get_flow_config -quiet timing_analysis_aocv]] && [string is true -strict [get_flow_config -quiet timing_analysis_socv]])" "Select only one of timing_analysis_socv or timing_analysis_aocv"
} -start_steps {} -end_steps {} -owner cadence {
  # Design attributes  [get_db -category design]
  #-------------------------------------------------------------------------------
  <%? {design_process_node} return [list set_db design_process_node [get_flow_config design_process_node]] %>
  <%? {design_tech_node} return [list set_db design_tech_node [get_flow_config design_tech_node]] %>
  
  # Timing attributes  [get_db -category timing]
  #-------------------------------------------------------------------------------
  set_db timing_analysis_cppr                       both
  set_db timing_analysis_type                       ocv
  set_db timing_enable_simultaneous_setup_hold_mode true
  <%? {timing_analysis_aocv} return [list set_db timing_analysis_aocv [get_flow_config timing_analysis_aocv]] %>
  <%? {timing_analysis_socv} return [list set_db timing_analysis_socv [get_flow_config timing_analysis_socv]] %>
  if {[get_feature report_pba]} {
    set_db timing_path_based_enable_mean_only_max_cppr_propagated true
  }
  
  # Delaycal attributes  [get_db -category delaycal]
  #-------------------------------------------------------------------------------
  set_db delaycal_enable_si                         true
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_tempus_yaml .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_tempus_yaml .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_tempus_yaml .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_tempus_yaml .feature_values {}}

create_flow_step -name init_voltus_yaml -start_steps {} -end_steps {} -owner cadence {
  # Design attributes  [get_db -category design]
  #-------------------------------------------------------------------------------
  <%? {design_process_node} return [list set_db design_process_node [get_flow_config design_process_node]] %>
  <%? {design_tech_node} return [list set_db design_tech_node [get_flow_config design_tech_node]] %>
  
  # Delaycal attributes  [get_db -category delaycal]
  #-------------------------------------------------------------------------------
  set_db delaycal_enable_si               false
  
  # Power attributes  [get_db -category power]
  #-------------------------------------------------------------------------------
  set_db power_output_dir                 [file join [get_db flow_report_directory] [get_db flow_report_name]]
  set_db power_write_static_currents      true
  set_db power_write_db                   true
  
  if {[get_feature report_static_ir]} {
    if {[is_flow -inside flow:ir_static]} {
      set_db power_db_name                static_power.db
      set_db power_method                 static
    }
  }
  if {[get_feature report_dynamic_ir]} {
    if {[is_flow -inside flow:ir_dynamic]} {
      set_db power_db_name                                  dynamic_power.db
      set_db power_enable_dynamic_scaling                   true
      set_db power_use_fastest_clock_for_dynamic_scheduling true
    }
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_voltus_yaml .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_voltus_yaml .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_voltus_yaml .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_voltus_yaml .feature_values {}}

create_flow_step -name block_start -start_steps {} -end_steps {} -owner cadence {
    set_db flow_write_db_common false
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:block_start .run_count 1}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:block_start .status success}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:block_start .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:block_start .feature_values {}}

create_flow_step -name block_finish -save_db -start_steps {} -end_steps {} -owner cadence -categories flow {
  apply {{} {
    #- Make sure flow_report_name is reset from any reports executed during the flow
    set_db flow_report_name [get_db [lindex [get_db flow_hier_path] end] .name]
    #- Set DB for handoff to Innovus
    if {[is_flow -inside flow:syn_opt]} {
      set_db flow_write_db_common true
    }
  
    #- Set value for SPEF output file generation
    if {[get_db flow_branch] ne ""} {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_branch]_[get_db flow_report_name]]
    } else {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_report_name]]
    }
    set_db flow_spef_directory $out_dir
  
    #- Store non-default root attributes to metrics
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
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:block_finish .run_count 1}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:block_finish .status success}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:block_finish .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:block_finish .feature_values {}}

create_flow_step -name activate_views -check {
  apply {{} {
    #- Check: analysis_view is defined
    foreach view [get_feature -obj [lindex [get_db flow_hier_path] end] setup_views] {
      check "[llength [get_flow_config -quiet analysis_views $view]]" "Specified setup view $view does not exist in setup.yaml"
    }
    foreach view [get_feature -obj [lindex [get_db flow_hier_path] end] hold_views] {
      check "[llength [get_flow_config -quiet analysis_views $view]]" "Specified hold view $view does not exist in setup.yaml"
    }
    check "[llength [get_feature -obj [lindex [get_db flow_hier_path] end] leakage_view]] <= 1" "Only one leakage view can be specified. Please select only one of the views specified: [get_feature -obj [lindex [get_db flow_hier_path] end] leakage_view]"
    foreach view [get_feature -obj [lindex [get_db flow_hier_path] end] leakage_view] {
      check "[llength [get_flow_config -quiet analysis_views $view]]" "Specified leakage view $view does not exist in setup.yaml"
    }
    check "[llength [get_feature -obj [lindex [get_db flow_hier_path] end] dynamic_view]] <= 1" "Only one dynamic view can be specified. Please select only one of the views specified: [get_feature -obj [lindex [get_db flow_hier_path] end] dynamic_view]"
    foreach view [get_feature -obj [lindex [get_db flow_hier_path] end] dynamic_view] {
      check "[llength [get_flow_config -quiet analysis_views $view]]" "Specified dynamic view $view does not exist in setup.yaml"
    }
  }}
} -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    set db [get_db flow_starting_db]
    set flow [lindex [get_db flow_hier_path] end]
    set setup_views [get_feature -obj $flow setup_views]
    set hold_views [get_feature -obj $flow hold_views]
    set leakage_view [get_feature -obj $flow leakage_view]
    set dynamic_view [get_feature -obj $flow dynamic_view]
  
    if {($setup_views ne "") || ($hold_views ne "") || ($leakage_view ne "") || ($dynamic_view ne "")} {
      #- use read_db args for DB types and set_analysis_views for TCL
      if {([llength [get_db analysis_views]]) > 0 &&  ([lindex $db 0] eq {tcl} || [lindex $db 0] in {enc cdb} && [file isfile [lindex $db 1]])} {
        set cmd "set_analysis_view"
        if {$setup_views ne ""} {
          append cmd " -setup [list $setup_views]"
        } else {
          append cmd " -setup [list [get_db [get_db analysis_views -if .is_setup] .name]]"
        }
        if {$hold_views ne ""} {
          append cmd " -hold [list $hold_views]"
        } else {
          append cmd " -hold [list [get_db [get_db analysis_views -if .is_hold] .name]]"
        }
        if {$leakage_view ne ""} {
          append cmd " -leakage [list $leakage_view]"
        } else {
          if {[llength [get_db analysis_views -if .is_leakage]] > 0} {
            append cmd " -leakage [list [get_db [get_db analysis_views -if .is_leakage] .name]]"
          }
        }
        if {$dynamic_view ne ""} {
          append cmd " -dynamic [list $dynamic_view]"
        } else {
          if {[llength [get_db analysis_views -if .is_dynamic]] > 0} {
            append cmd " -dynamic [list [get_db [get_db analysis_views -if .is_dynamic] .name]]"
          }
        }
        eval $cmd
      } elseif {[llength [get_db analysis_views]] == 0} {
        set cmd "set_flowkit_read_db_args"
        if {$setup_views ne ""} {
          append cmd " -setup_views [list $setup_views]"
        }
        if {$hold_views ne ""} {
          append cmd " -hold_views [list $hold_views]"
        }
        if {$leakage_view ne ""} {
          append cmd " -leakage_view [list $leakage_view]"
        }
        if {$dynamic_view ne ""} {
          append cmd " -dynamic_view [list $dynamic_view]"
        }
        eval $cmd
      } else {
      }
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:activate_views .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:activate_views .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:activate_views .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:activate_views .feature_values {}}

create_flow_step -name report_start -start_steps {} -end_steps {} -owner cadence {
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_start .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_start .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_start .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_start .feature_values {}}

create_flow_step -name report_finish -start_steps {} -end_steps {} -owner cadence -categories flow {
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_finish .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_finish .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_finish .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_finish .feature_values {}}

create_flow_step -name signoff_start -start_steps {} -end_steps {} -owner cadence {
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:signoff_start .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:signoff_start .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:signoff_start .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:signoff_start .feature_values {}}

create_flow_step -name signoff_finish -start_steps {} -end_steps {} -owner cadence -categories flow {
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:signoff_finish .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:signoff_finish .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:signoff_finish .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:signoff_finish .feature_values {}}

create_flow_step -name innovus_to_quantus -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    #- determine required rc_corners
    set setup_views {}
    set hold_views {}
    set leakage_views {}
    set dynamic_views {}
  
    if {([get_feature -obj flow:sta setup_views] ne "")} {
      lappend setup_views [get_feature -obj flow:sta setup_views]
    } else {
      lappend setup_views [get_db [get_db analysis_views -if .is_setup] .name]
    }
    if {([get_feature -obj flow:sta hold_views] ne "")} {
      lappend hold_views [get_feature -obj flow:sta hold_views]
    } else {
      lappend hold_views [get_db [get_db analysis_views -if .is_hold] .name]
    }
    if {([get_feature -obj flow:sta leakage_view] ne "")} {
      lappend leakage_views [get_feature -obj flow:sta leakage_view]
    } else {
      lappend leakage_views [get_db [get_db analysis_views -if .is_leakage] .name]
    }
    if {([get_feature -obj flow:sta dynamic_view] ne "")} {
      lappend dynamic_views [get_feature -obj flow:sta dynamic_view]
    } else {
      lappend dynamic_views [get_db [get_db analysis_views -if .is_dynamic] .name]
    }
  if {[get_feature report_static_ir]} {
      if {([get_feature -obj flow:ir_static setup_views] ne "")} {
        lappend setup_views [get_feature -obj flow:ir_static setup_views]
      } else {
        lappend setup_views [get_db [get_db analysis_views -if .is_setup] .name]
      }
      if {([get_feature -obj flow:ir_static hold_views] ne "")} {
        lappend hold_views [get_feature -obj flow:ir_static hold_views]
      } else {
        lappend hold_views [get_db [get_db analysis_views -if .is_hold] .name]
      }
      if {([get_feature -obj flow:ir_static leakage_view] ne "")} {
        lappend leakage_views [get_feature -obj flow:ir_static leakage_view]
      } else {
        lappend leakage_views [get_db [get_db analysis_views -if .is_leakage] .name]
      }
      if {([get_feature -obj flow:ir_static dynamic_view] ne "")} {
        lappend dynamic_views [get_feature -obj flow:ir_static dynamic_view]
      } else {
        lappend dynamic_views [get_db [get_db analysis_views -if .is_dynamic] .name]
      }
  }
  if {[get_feature report_dynamic_ir]} {
      if {([get_feature -obj flow:ir_dynamic setup_views] ne "")} {
        lappend setup_views [get_feature -obj flow:ir_dynamic setup_views]
      } else {
        lappend setup_views [get_db [get_db analysis_views -if .is_setup] .name]
      }
      if {([get_feature -obj flow:ir_dynamic hold_views] ne "")} {
        lappend hold_views [get_feature -obj flow:ir_dynamic hold_views]
      } else {
        lappend hold_views [get_db [get_db analysis_views -if .is_hold] .name]
      }
      if {([get_feature -obj flow:ir_dynamic leakage_view] ne "")} {
        lappend leakage_views [get_feature -obj flow:ir_dynamic leakage_view]
      } else {
        lappend leakage_views [get_db [get_db analysis_views -if .is_leakage] .name]
      }
      if {([get_feature -obj flow:ir_dynamic dynamic_view] ne "")} {
        lappend dynamic_views [get_feature -obj flow:ir_dynamic dynamic_view]
      } else {
        lappend dynamic_views [get_db [get_db analysis_views -if .is_dynamic] .name]
      }
  }
  
    #- create output location
    if {![file exists [get_db flow_spef_directory]]} {
      file mkdir [get_db flow_spef_directory]
    }
  
    #- write extraction command file
    set views [get_db -u analysis_views [join "$setup_views $hold_views $leakage_views $dynamic_views"]]
    set corners [lsort -u [concat [get_db -u $views .delay_corner.late_rc_corner]  [get_db -u $views .delay_corner.early_rc_corner]]]
  
    if {$corners ne ""} {
      write_extraction_spec -out_dir [get_db flow_spef_directory] -rc_corners $corners
    } else {
      write_extraction_spec -out_dir [get_db flow_spef_directory]
    }
    if {[get_db extract_rc_qrc_run_mode] eq "sequential"} {
      foreach file [glob -directory . qrc.cmd*] {
        file rename -force $file [file join [get_db flow_spef_directory] $file]
      }
    } else {
      file rename -force qrc.cmd [file join [get_db flow_spef_directory] qrc.cmd]
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:innovus_to_quantus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:innovus_to_quantus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:innovus_to_quantus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:innovus_to_quantus .feature_values {}}

create_flow_step -name run_quantus -start_steps {} -end_steps {} -owner cadence {
  #- collect qrc command files and run them
  if {[dict get [get_db flowtool_extra_arguments] run_mode] eq "sequential"} {
    set files [glob -directory {*}[dict get [get_db flowtool_extra_arguments] directory] qrc.cmd*]
  } else {
    set files [glob -directory {*}[dict get [get_db flowtool_extra_arguments] directory] qrc.cmd]
  }
  
  foreach file $files {
    if {[regexp {\,(\S+)$} $file match corner]} {
      set name [get_db flow_branch]_${corner}
    } else {
      set name [get_db flow_branch]
    }
    puts "INFO: running [list [auto_execok quantus] {*}-log_file [file join [get_db flow_log_directory] extract.${name}.log] -cmd $file]"
    if {[catch {exec -ignorestderr -- [auto_execok quantus] {*}-log_file [file join [get_db flow_log_directory] extract.${name}.log] -cmd $file >@ stdout 2>@ stderr} results options]} {
      set err_info [lassign [dict get $options -errorcode] err_type]
      switch -exact -- $err_type {
        NONE {
        }
        CHILDSTATUS {
          set exit_status [lindex $err_info 1]
          set process_id  [lindex $err_info 0]
          if {$exit_status != 0} {
            error "Flow extract(${name}) did not successfully complete and exited with code: $exit_status."
          }
        }
        default {
          error "Unknown error encountered while running extract: $err_info"
        }
      }
    }
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_quantus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_quantus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_quantus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_quantus .feature_values {}}

create_flow_step -name innovus_to_tempus -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    #- initialize sta analysis_views
    if {([get_feature -obj flow:sta setup_views] ne "") || ([get_feature -obj flow:sta hold_views] ne "")} {
      set cmd "set_analysis_view"
      if {[get_feature -obj flow:sta setup_views] ne ""} {
        set cmd "$cmd -setup [list [get_db analysis_views [get_feature -obj flow:sta setup_views]]]"
      } else {
        set cmd "$cmd -setup [list [get_db analysis_views -if .is_setup]]"
      }
      if {[get_feature -obj flow:sta hold_views] ne ""} {
        set cmd "$cmd -hold [list [get_db analysis_views [get_feature -obj flow:sta hold_views]]]"
      } else {
        set cmd "$cmd -hold [list [get_db analysis_views -if .is_hold]]"
      }
      eval "$cmd -leakage [get_db analysis_views -if .is_leakage] -dynamic [get_db analysis_views -if .is_dynamic]"
    }
    #- write design and library information
    if {[get_db flow_branch] ne ""} {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_branch]_[get_db flow_report_name]]
    } else {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_report_name]]
    }
    if {[llength [get_db -u rc_corners .cap_table_file]] > 0} {
      write_design -tempus -signoff_eco $out_dir
    } else {
      write_design -tempus $out_dir
    }
  
    #- write init_design sequence for STA flow
    set FH [open [file join $out_dir init_sta.tcl] w]
    puts $FH {#dataVar is dir where this script is found}
    puts $FH {set dataVar [file dirname [file normalize [info script]]]}
    if {![string is space [get_flow_config -quiet init_physical_files oa_ref_libs]]} {
      puts $FH "cd [get_db flow_startup_directory]"
    }
    puts $FH "source -quiet [file join  \$dataVar [get_db current_design .name].tempus_setup.tcl]"
    if {![string is space [get_flow_config -quiet init_physical_files oa_ref_libs]]} {
      puts $FH "cd \[get_db flow_working_directory\]"
    }
    puts $FH "set_db flow_report_name [get_db flow_report_name]"
    puts $FH "set_db flow_spef_directory [get_db flow_spef_directory]"
    close $FH
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:innovus_to_tempus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:innovus_to_tempus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:innovus_to_tempus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:innovus_to_tempus .feature_values {}}

create_flow_step -name schedule_sta -skip_metric -start_steps {} -end_steps {} -owner cadence {
  #FlowtoolPredictHint ArgumentRandomise -branch
  apply {{} {
    if {[get_db flow_branch] ne ""} {
      set db_dir [file join [get_db flow_db_directory] [get_db flow_branch]_[get_db flow_report_name]]
    } else {
      set db_dir [file join [get_db flow_db_directory] [get_db flow_report_name]]
    }
  schedule_flow  -flow sta  -branch [get_db flow_branch]  -db [file join $db_dir init_sta.tcl]  -include_in_metrics  -no_sync
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_sta .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_sta .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_sta .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_sta .feature_values {}}

create_flow_step -name fix_drc -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    delete_markers
    check_drc -limit 100000
    set drcMList [get_db markers]
    set drc_iter 0
    set max_drc_iter 4
    while { ([llength $drcMList] > 0) && ($drc_iter < $max_drc_iter) } {
      puts "Found [llength $drcMList] DRC markers. Starting route_eco to fix DRCs (iteration $drc_iter)"
      route_eco -fix_drc
      delete_markers
      check_drc -limit 100000
      set drcMList [get_db markers]
      incr drc_iter
    }
    puts "DRC fixing completed after $drc_iter iterations. Remaining DRCs are [llength $drcMList]."
    if { ([llength $drcMList] > 0) } {
      delete_routes -regular_wire_with_drc
      route_global_detail
      check_drc -limit 100000
      set drcMList [get_db markers]
      puts "Last round of DRC fixing completed after $drc_iter iterations. Remaining DRCs are [llength $drcMList]."
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:fix_drc .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:fix_drc .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:fix_drc .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:fix_drc .feature_values {}}

create_flow_step -name fix_antenna -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    delete_markers
    check_antenna
    set antennaMList [get_db markers]
    set antenna_iter 0
    set max_antenna_iter 4
    while { ([llength $antennaMList] > 0) && ($antenna_iter < $max_antenna_iter) } {
      puts "Found [llength $antennaMList] antenna markers. Starting route_eco to fix antennas (iteration $antenna_iter)"
      route_global_detail
      delete_markers
      check_antenna
      set antennaMList [get_db markers]
      incr antenna_iter
    }
    puts "Antenna fixing completed after $antenna_iter iterations. Remaining antennas are [llength $antennaMList]."
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:fix_antenna .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:fix_antenna .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:fix_antenna .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:fix_antenna .feature_values {}}

create_flow_step -name remove_blockages_halos -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    delete_place_halo -all_blocks
    delete_obj [get_db place_blockages]
    delete_route_blockages -type all
    delete_route_halo -all_blocks
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:remove_blockages_halos .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:remove_blockages_halos .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:remove_blockages_halos .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:remove_blockages_halos .feature_values {}}

create_flow_step -name schedule_signoff_subflows -skip_metric -start_steps {} -end_steps {} -owner cadence -exclude_time_metric {
  #FlowtoolPredictHint ArgumentRandomise -branch
  schedule_flow  -flow extract  -branch [get_db flow_branch]  -tool_options "-- [list run_mode [get_db extract_rc_qrc_run_mode] directory [get_db flow_spef_directory]]"  -no_db  -include_in_metrics
  if {[get_feature report_static_ir]} {
    schedule_flow  -flow ir_static  -include_in_metrics  -branch [get_db flow_branch]  -sync
  }
  if {[get_feature report_dynamic_ir]} {
    schedule_flow  -flow ir_dynamic  -include_in_metrics  -branch [get_db flow_branch]  -sync
  }
  schedule_flow  -flow sta  -include_in_metrics  -branch [get_db flow_branch]  -db [file join [get_db flow_db_directory] [get_db flow_branch] init_sta.tcl]  -sync
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_signoff_subflows .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_signoff_subflows .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_signoff_subflows .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_signoff_subflows .feature_values {}}

create_flow_step -name read_parasitics -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    #- initialize annotations using spef
    if {[is_flow -quiet -inside flow:ir_static] || [is_flow -quiet -inside flow:ir_dynamic] || [is_flow -quiet -inside flow:ir_rampup]} {
      set cmd "read_spef -decoupled"
    } else {
      set cmd "read_spef"
    }
  
    set views [get_db -u analysis_views -if {.is_setup || .is_hold || .is_leakage || .is_dynamic}]
    set corners [lsort -u [concat [get_db -u $views .delay_corner.late_rc_corner]  [get_db -u $views .delay_corner.early_rc_corner]]]
    foreach corner $corners {
      set corner_name [get_db ${corner} .name]
      set file [glob -nocomplain -directory [get_db flow_spef_directory] *.${corner_name}.spef*]
      if {[file exists ${file}]} {
        eval "$cmd -rc_corner ${corner_name} ${file}"
      } else {
        error "ERROR: spef file not found for rc_corner ${corner_name} in directory [get_db flow_spef_directory]"
      }
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:read_parasitics .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:read_parasitics .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:read_parasitics .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:read_parasitics .feature_values {}}

create_flow_step -name run_syn_generic -start_steps {} -end_steps {} -owner cadence {
  #- Synthesize to generic gates
  syn_generic
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_syn_generic .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_syn_generic .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_syn_generic .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_syn_generic .feature_values {}}

create_flow_step -name run_syn_map -start_steps {} -end_steps {} -owner cadence {
  #- Synthesize to target library gates
  syn_map
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_syn_map .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_syn_map .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_syn_map .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_syn_map .feature_values {}}

create_flow_step -name run_syn_opt -start_steps {} -end_steps {} -owner cadence {
  #- Synthesize to optimized gates
  syn_opt
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_syn_opt .run_count 1}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_syn_opt .status success}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_syn_opt .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_syn_opt .feature_values {}}

create_flow_step -name genus_to_innovus -start_steps {} -end_steps {} -owner cadence {
  #- Apply change_name rules
  update_names  [get_db current_design]  -force  -verilog  -module  -append_log  -log [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]design.change_names.rpt]
  
  write_design  -gzip_files  -basename [file normalize [file join [get_db flow_db_directory] [get_db flow_report_name] [get_db current_design .name]]]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:genus_to_innovus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:genus_to_innovus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:genus_to_innovus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:genus_to_innovus .feature_values {}}

create_flow_step -name report_area_genus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories design {
  report_area -min_count 1000 > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]area.summary.rpt]
  report_dp                   > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]area.datapath.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_area_genus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_area_genus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_area_genus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_area_genus .feature_values {}}

create_flow_step -name report_late_summary_genus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories setup {
  report_timing_summary -checks {setup drv} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.analysis_summary.rpt]
  report_timing_summary -checks {setup drv} -expand_views > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.view_summary.rpt]
  report_timing_summary -checks {setup drv} -expand_views -expand_clocks launch_capture  > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.group_summary.rpt]
  set_metric -name timing.setup.type -value gba
  report_qor > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]qor.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_late_summary_genus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_late_summary_genus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_late_summary_genus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_late_summary_genus .feature_values {}}

create_flow_step -name report_power_genus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories power {
  report_gates -power   > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]power.all.rpt]
  report_clock_gates    > [file join [get_db flow_report_directory]/[get_db flow_report_name] [get_db flow_report_prefix]power.clock_gating.rpt]
  report_power -by_category > [file join [get_db flow_report_directory]/[get_db flow_report_name] [get_db flow_report_prefix]power.design.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_power_genus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_power_genus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_power_genus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_power_genus .feature_values {}}

create_flow_step -name add_tracks -start_steps {} -end_steps {} -owner cadence {
  #- generate tracks after creating floorplan
  if {[llength [get_db current_design .track_patterns]] == 0} {
    add_tracks
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:add_tracks .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:add_tracks .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:add_tracks .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:add_tracks .feature_values {}}

create_flow_step -name add_clock_spec -start_steps {} -end_steps {} -owner cadence {
  #- automatically create clock spec if one is not available
  if {[llength [get_db clock_trees]] == 0} {
    create_clock_tree_spec
  } else {
    puts "INFO: reusing existing clock tree spec"
    puts "        to reload a new one use 'reset_cts_config' and 'read_cts_config' commands"
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:add_clock_spec .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:add_clock_spec .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:add_clock_spec .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:add_clock_spec .feature_values {}}

create_flow_step -name commit_route_types -start_steps {} -end_steps {} -owner cadence {
  #- assign route_types to clock nets
  commit_clock_tree_route_attributes
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:commit_route_types .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:commit_route_types .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:commit_route_types .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:commit_route_types .feature_values {}}

create_flow_step -name run_place_opt -start_steps {} -end_steps {} -owner cadence {
  #- perform global placement and ideal clock setup optimization
  place_opt_design -report_dir debug -report_prefix [get_db flow_report_name]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_place_opt .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_place_opt .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_place_opt .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_place_opt .feature_values {}}

create_flow_step -name add_clock_tree -start_steps {} -end_steps {} -owner cadence {
  #- implement clock trees and propagated clock setup optimization
  if {[get_db opt_enable_podv2_clock_opt_flow]} {
    clock_opt_design -report_dir debug -report_prefix [get_db flow_report_name]
  } else {
    ccopt_design -report_dir debug -report_prefix [get_db flow_report_name]
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:add_clock_tree .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:add_clock_tree .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:add_clock_tree .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:add_clock_tree .feature_values {}}

create_flow_step -name add_tieoffs -start_steps {} -end_steps {} -owner cadence {
  #- insert dedicated tieoff models
  if {[get_db add_tieoffs_cells] ne "" } {
    delete_tieoffs
    add_tieoffs -matching_power_domains true
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:add_tieoffs .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:add_tieoffs .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:add_tieoffs .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:add_tieoffs .feature_values {}}

create_flow_step -name run_opt_postcts_hold -start_steps {} -end_steps {} -owner cadence {
  #- perform postcts hold optimization
  opt_design -post_cts -hold -report_dir debug -report_prefix [get_db flow_report_name]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_opt_postcts_hold .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_opt_postcts_hold .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_opt_postcts_hold .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_opt_postcts_hold .feature_values {}}

create_flow_step -name add_fillers -start_steps {} -end_steps {} -owner cadence {
  #- insert filler cells before final routing
  if {[get_db add_fillers_cells] ne "" } {
    add_fillers
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:add_fillers .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:add_fillers .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:add_fillers .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:add_fillers .feature_values {}}

create_flow_step -name run_route -start_steps {} -end_steps {} -owner cadence {
  #- perform detail routing and DRC cleanup
  route_design
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_route .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_route .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_route .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_route .feature_values {}}

create_flow_step -name run_opt_postroute -start_steps {} -end_steps {} -owner cadence {
  #- perform postroute and SI based setup optimization
  opt_design -post_route -setup -hold -report_dir debug -report_prefix [get_db flow_report_name]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_opt_postroute .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_opt_postroute .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_opt_postroute .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_opt_postroute .feature_values {}}

create_flow_step -name run_opt_signoff -start_steps {} -end_steps {} -owner cadence {
    #- perform signoff based optimization
    opt_signoff -all -report_dir debug -report_prefix [get_db flow_report_name]
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_opt_signoff .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_opt_signoff .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_opt_signoff .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_opt_signoff .feature_values {}}

create_flow_step -name eco_start -start_steps {} -end_steps {} -owner cadence {
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:eco_start .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:eco_start .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:eco_start .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:eco_start .feature_values {}}

create_flow_step -name run_place_eco -start_steps {} -end_steps {} -owner cadence {
  place_eco
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_place_eco .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_place_eco .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_place_eco .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_place_eco .feature_values {}}

create_flow_step -name run_route_eco -start_steps {} -end_steps {} -owner cadence {
  route_eco
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:run_route_eco .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:run_route_eco .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:run_route_eco .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:run_route_eco .feature_values {}}

create_flow_step -name eco_finish -save_db -start_steps {} -end_steps {} -owner cadence {
  apply {{} {
    #- Make sure flow_report_name is reset from any reports executed during the flow
    set_db flow_report_name [get_db [lindex [get_db flow_hier_path] end] .name]
  
    #- Set value for SPEF output file generation
    if {[get_db flow_branch] ne ""} {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_branch]_[get_db flow_report_name]]
    } else {
      set out_dir [file join [get_db flow_db_directory] [get_db flow_report_name]]
    }
    set_db flow_spef_directory $out_dir
  
    #- Store non-default root attributes to metrics
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
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:eco_finish .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:eco_finish .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:eco_finish .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:eco_finish .feature_values {}}

create_flow_step -name report_check_design -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories design {
  apply {{} {
    set check_list [list timing place opt]
    if {[join [dict values [get_db init_power_intent_files]]] ne {}} {
      lappend check_list power_intent
    }
    if {[is_flow -inside flow:report_postroute]} {
      check_design -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.design.tcl] -type [lappend check_list cts route]
    } elseif {[is_flow -inside flow:report_postcts]} {
      check_design -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.design.tcl] -type [lappend check_list cts]
    } else {
      check_design -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.design.tcl] -type $check_list
    }
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_check_design .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_check_design .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_check_design .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_check_design .feature_values {}}

create_flow_step -name report_area_innovus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories design {
  report_summary -no_html -out_dir debug -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]qor.rpt]
  report_area -min_count 1000 -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]area.summary.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_area_innovus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_area_innovus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_area_innovus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_area_innovus .feature_values {}}

create_flow_step -name report_late_summary_innovus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories setup {
  #- Update the timer for setup and write reports
  time_design -expanded_views -report_only -report_dir debug -report_prefix [get_db flow_report_name]
  
  #- Reports that describe timing health
  report_timing_summary -checks {setup drv} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.analysis_summary.rpt]
  report_timing_summary -checks {setup drv} -expand_views > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.view_summary.rpt]
  report_timing_summary -checks {setup drv} -expand_views -expand_clocks launch_capture  > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.group_summary.rpt]
  report_constraint -late -all_violators -drv_violation_type {max_capacitance max_transition max_fanout} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.all_violators.rpt]
  set_metric -name timing.setup.type -value gba
  set_metric -name timing.drv.report_file -value [file join [get_db flow_report_name] [get_db flow_report_prefix]setup.all_violators.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_late_summary_innovus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_late_summary_innovus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_late_summary_innovus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_late_summary_innovus .feature_values {}}

create_flow_step -name report_early_summary_innovus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories hold {
  #- Update the timer for hold and write reports
  time_design -expanded_views -hold -report_only -report_dir debug -report_prefix [get_db flow_report_name]
  
  #- Reports that describe timing health
  report_timing_summary -checks {hold drv} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.analysis_summary.rpt]
  report_timing_summary -checks {hold drv} -expand_views > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.view_summary.rpt]
  report_timing_summary -checks {hold drv} -expand_views -expand_clocks launch_capture  > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.group_summary.rpt]
  report_constraint -early -all_violators -drv_violation_type {min_capacitance min_transition min_fanout} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.all_violators.rpt]
  set_metric -name timing.hold.type -value gba
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_early_summary_innovus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_early_summary_innovus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_early_summary_innovus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_early_summary_innovus .feature_values {}}

create_flow_step -name report_clock_timing -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories clock {
  #- Reports that check clock implementation
  report_clock_timing -type summary > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]clock.summary.rpt]
  report_clock_timing -type latency > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]clock.latency.rpt]
  report_clock_timing -type skew    > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]clock.skew.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_clock_timing .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_clock_timing .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_clock_timing .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_clock_timing .feature_values {}}

create_flow_step -name report_power_innovus -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories power {
  report_power -no_wrap -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]power.all.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_power_innovus .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_power_innovus .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_power_innovus .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_power_innovus .feature_values {}}

create_flow_step -name report_route_process -start_steps {} -end_steps {} -owner cadence -exclude_time_metric {
  #- Reports that process rules
  check_process_antenna -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.antenna.rpt]
  check_filler -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.filler.rpt]
  set_metric -name check.drc.antenna.report_file -value [file join [get_db flow_report_name] [get_db flow_report_prefix]route.antenna.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_route_process .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_route_process .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_route_process .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_route_process .feature_values {}}

create_flow_step -name report_route_drc -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories route {
  #- Reports that check signal routing
  if {[is_flow -inside flow:report_floorplan]} {
    check_drc -check_only special -ignore_trial_route -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.drc.rpt]
  } else {
    check_drc -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.drc.rpt]
    check_connectivity -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.open.rpt]
  }
  set_metric -name check.drc.report_file -value [file join [get_db flow_report_name] [get_db flow_report_prefix]route.drc.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_route_drc .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_route_drc .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_route_drc .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_route_drc .feature_values {}}

create_flow_step -name report_route_density -start_steps {} -end_steps {} -owner cadence -exclude_time_metric {
  check_metal_density -report [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.metal_density.rpt]
  check_cut_density -out_file [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]route.cut_density.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_route_density .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_route_density .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_route_density .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_route_density .feature_values {}}

create_flow_step -name set_propagated_clocks -start_steps {} -end_steps {} -owner cadence {
  #- propagate clock sources
  set_interactive_constraint_mode [get_db constraint_modes -if {.is_setup || .is_hold}]
  set_propagated_clock [get_db clocks .sources]
  set_interactive_constraint_mode {}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:set_propagated_clocks .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:set_propagated_clocks .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:set_propagated_clocks .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:set_propagated_clocks .feature_values {}}

create_flow_step -name update_timing -save_db -start_steps {} -end_steps {} -owner cadence {
  #- update timer for signoff timing reports
  update_timing -full
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:update_timing .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:update_timing .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:update_timing .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:update_timing .feature_values {}}

create_flow_step -name check_timing -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories design {
  #- Reports that check design health
  check_netlist -out_file        [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.netlist.rpt]
  check_timing                 > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.timing.rpt]
  report_analysis_coverage     > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.coverage.rpt]
  report_annotated_parasitics  > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]check.annotation.rpt]
  
  #- Reports that describe constraints
  report_clocks                > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]report.clocks.rpt]
  report_case_analysis         > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]report.case_analysis.rpt]
  report_inactive_arcs         > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]report.inactive_arcs.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:check_timing .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:check_timing .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:check_timing .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:check_timing .feature_values {}}

create_flow_step -name report_late_summary -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories setup {
  #- Reports that describe timing health
  report_timing_summary -checks {setup drv} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.analysis_summary.rpt]
  report_timing_summary -checks {setup drv} -expand_views > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.view_summary.rpt]
  report_timing_summary -checks {setup drv} -expand_views -expand_clocks launch_capture  > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.group_summary.rpt]
  report_constraint -late -all_violators -drv_violation_type {max_capacitance max_transition max_fanout} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]setup.all_violators.rpt]
  set_metric -name timing.setup.type -value gba
  set_metric -name timing.drv.report_file -value [file join [get_db flow_report_name] [get_db flow_report_prefix]setup.all_violators.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_late_summary .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_late_summary .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_late_summary .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_late_summary .feature_values {}}

create_flow_step -name report_early_summary -start_steps {} -end_steps {} -owner cadence -exclude_time_metric -categories hold {
  #- Reports that describe early timing health
  report_timing_summary -checks {hold drv} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.analysis_summary.rpt]
  report_timing_summary -checks {hold drv} -expand_views > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.view_summary.rpt]
  report_timing_summary -checks {hold drv} -expand_views -expand_clocks launch_capture  > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.group_summary.rpt]
  set_metric -name timing.hold.type -value gba
  report_constraint -early -all_violators -drv_violation_type {min_capacitance min_transition min_fanout} > [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db flow_report_prefix]hold.all_violators.rpt]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_early_summary .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_early_summary .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_early_summary .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_early_summary .feature_values {}}

create_flow_step -name report_power -start_steps {} -end_steps {} -owner cadence {
  report_power  -pg_pin  -out_dir [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db [lindex [get_db flow_hier_path] end] .name]]
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_power .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_power .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_power .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_power .feature_values {}}

create_flow_step -name report_rail -start_steps {} -end_steps {} -owner cadence {
  report_rail   -output_dir [file join [get_db flow_report_directory] [get_db flow_report_name] [get_db [lindex [get_db flow_hier_path] end] .name]]  -type domain   ALL
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_rail .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_rail .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_rail .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_rail .feature_values {}}

create_flow_step -name set_dont_use -start_steps {} -end_steps {} -owner design {
  #- disable base_cell usage during optimization
  <%? {dont_use_cells} return "foreach base_cell_name [list [get_flow_config dont_use_cells]] {set_db \[get_db base_cells \$base_cell_name\] .dont_use true}" %>
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:set_dont_use .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:set_dont_use .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:set_dont_use .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:set_dont_use .feature_values {}}

create_flow_step -name read_hdl -start_steps {} -end_steps {} -owner design {
  set hdl_file_list [list ../pipeline_src/calculator_pkg.sv  ../pipeline_src/full_adder.sv  ../pipeline_src/adder32.sv  ../pipeline_src/result_buffer.sv  ../pipeline_src/controller.sv  ../pipeline_src/top_lvl.sv  ]
  read_hdl -sv $hdl_file_list
  elaborate top_lvl
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:read_hdl .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:read_hdl .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:read_hdl .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:read_hdl .feature_values {}}

create_flow_step -name init_floorplan -check {
  foreach file [get_flow_config -quiet init_floorplan_file] {
    check "[file exists $file] && [file readable $file]" "The floorplan file: $file was not found or is not readable."
  }
  foreach file [get_flow_config -quiet init_floorplan_tcl] {
    check "[file exists $file] && [file readable $file]" "The floorplan tcl file: $file was not found or is not readable."
  }
  foreach file [get_flow_config -quiet init_def_files] {
    check "[file exists $file] && [file readable $file]" "The def file: $file was not found or is not readable."
  }
} -start_steps {} -end_steps {} -owner design {
  #- initialize floorplan object using DEF and/or floorplan files
  <%? {init_floorplan_file} return "read_floorplan [get_flow_config init_floorplan_file]" %>
  <%? {init_floorplan_tcl} return "source [get_flow_config init_floorplan_tcl]" %>
  <%? {init_def_files} return "foreach def_file [list [get_flow_config init_def_files]] { read_def \$def_file }" %>
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_floorplan .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_floorplan .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_floorplan .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_floorplan .feature_values {}}

create_flow_step -name add_clock_route_types -start_steps {} -end_steps {} -owner design {
  #- define route_types and/or route_rules
  #create_route_type -name cts_top   < PLACEHOLDER: CLOCK TOP ROUTE RULE >
  #create_route_type -name cts_trunk < PLACEHOLDER: CLOCK TRUNK ROUTE RULE >
  #create_route_type -name cts_leaf  < PLACEHOLDER: CLOCK LEAF ROUTE RULE >
  
  set_db cts_route_type_top  default
  set_db cts_route_type_trunk default
  set_db cts_route_type_leaf  default
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:add_clock_route_types .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:add_clock_route_types .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:add_clock_route_types .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:add_clock_route_types .feature_values {}}

create_flow_step -name write_output_files -start_steps {} -end_steps {} -owner design {
    write_stream -merge [get_flow_config std_cells]/gds/sky130_scl_9T.gds ./output/[get_db designs .name].gds
    write_lef_abstract ./output/[get_db designs .name].lef
    redirect -variable views {report_analysis_views}
    foreach {-> view} [regexp -all -inline {Analysis View:\s+(\S+)} $views] {
        set_analysis_view -dynamic $view -leakage $view -setup $view -hold $view
        write_timing_model ./output/[get_db designs .name]__${view}.lib -view $view -post_check
    }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:write_output_files .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:write_output_files .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:write_output_files .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:write_output_files .feature_values {}}

create_flow_step -name write_output_screenshot -start_steps {} -end_steps {} -owner design {
    set inputstring [get_db flow_starting_db]
    set stepname [lindex $inputstring [expr {[llength stepname]}]]
    set filename [file tail $stepname]
    set rootname [file rootname $filename]
    set outfile "./output/screenshots/${rootname}.gif"
    # Define the directory name
    set dirName "output/screenshots"

    # Check if the directory exists
    if {![file exists $dirName]} {
    # Create the directory if it doesn't exist
      file mkdir $dirName
      puts "Directory '$dirName' created."
    } else {
         puts "Directory '$dirName' already exists."
    }
    write_to_gif $outfile
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:write_output_screenshot .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:write_output_screenshot .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:write_output_screenshot .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:write_output_screenshot .feature_values {}}

create_flow_step -name init_eco -save_db -start_steps {} -end_steps {} -owner design {
  < PLACEHOLDER: ECO COMMANDS >
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_eco .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_eco .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_eco .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_eco .feature_values {}}

create_flow_step -name init_mcpu -start_steps {} -end_steps {} -owner flow {
  apply {{} {
    # Multi host/cpu attributes
    #-----------------------------------------------------------------------------
    # The FLOWTOOL_NUM_CPUS is an environment variable which should be exported by
    # the specified dist script.  This connects the number of CPUs being reserved
    # for batch jobs with the current flow scripts.  The LSB_MAX_NUM_PROCESSORS is
    # a typical environment variable exported by distribution platforms and is
    # useful for ensuring all interactive jobs are using the reserved amount of CPUs.
    if {[info exists ::env(FLOWTOOL_NUM_CPUS)]} {
      set max_cpus $::env(FLOWTOOL_NUM_CPUS)
    } elseif {[info exists ::env(LSB_MAX_NUM_PROCESSORS)]} {
      set max_cpus $::env(LSB_MAX_NUM_PROCESSORS)
    } else {
      set max_cpus 1
    }
    switch -glob [get_db program_short_name] {
      default       {}
      joules*       -
      genus*        -
      innovus*      -
      tempus*       -
      voltus*       { set_multi_cpu_usage -verbose -local_cpu $max_cpus }
    }
if {[get_feature opt_signoff]} {
      if {[is_flow -inside flow:opt_signoff]} {
        set_multi_cpu_usage -verbose -remote_host 1
        set_multi_cpu_usage -verbose -cpu_per_remote_host 16
        set_distributed_hosts -local
      }
}
  }}
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_mcpu .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_mcpu .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_mcpu .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_mcpu .feature_values {}}

create_flow_step -name report_late_paths -start_steps {} -end_steps {} -owner flow -exclude_time_metric {
  #- Reports that show detailed timing with Graph Based Analysis (GBA)
  report_timing -max_paths 5   -nworst 1 -path_type endpoint        > [file join [get_db flow_report_directory] [get_db flow_report_name] setup.endpoint.rpt]
  report_timing -max_paths 1   -nworst 1 -path_type full_clock -net > [file join [get_db flow_report_directory] [get_db flow_report_name] setup.worst.rpt]
  report_timing -max_paths 500 -nworst 1 -path_type full_clock      > [file join [get_db flow_report_directory] [get_db flow_report_name] setup.gba.rpt]
  if {![get_feature report_pba]} {
    
    #- Reports that show detailed timing with Path Based Analysis (PBA)
    if {[is_flow -quiet -inside flow:sta]} {
      report_timing -max_paths 50 -nworst 1 -path_type full_clock -retime path_slew_propagation > [file join [get_db flow_report_directory] [get_db flow_report_name] setup.pba.rpt]
    }
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_late_paths .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_late_paths .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_late_paths .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_late_paths .feature_values {}}

create_flow_step -name report_early_paths -start_steps {} -end_steps {} -owner flow -exclude_time_metric {
  #- Reports that show detailed early timing with Graph Based Analysis (GBA)
  report_timing -early -max_paths 5   -nworst 1 -path_type endpoint        > [file join [get_db flow_report_directory] [get_db flow_report_name] hold.endpoint.rpt]
  report_timing -early -max_paths 1   -nworst 1 -path_type full_clock -net > [file join [get_db flow_report_directory] [get_db flow_report_name] hold.worst.rpt]
  report_timing -early -max_paths 500 -nworst 1 -path_type full_clock      > [file join [get_db flow_report_directory] [get_db flow_report_name] hold.gba.rpt]
  if {![get_feature report_pba]} {
    
    #- Reports that show detailed timing with Path Based Analysis (PBA)
    if {[is_flow -quiet -inside flow:sta]} {
      report_timing -early -max_paths 50 -nworst 1 -path_type full_clock -retime path_slew_propagation > [file join [get_db flow_report_directory] [get_db flow_report_name] hold.pba.rpt]
    }
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:report_early_paths .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:report_early_paths .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:report_early_paths .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:report_early_paths .feature_values {}}

create_flow_step -name init_elaborate -start_steps {} -end_steps {} -owner design {
  # HDL attributes [get_db -category hdl]
  #-----------------------------------------------------------------------------
  
  # Low Power attributes [get_db -category lp_cg]
  #-----------------------------------------------------------------------------
  <%? {lp_insert_clock_gating} return [list set_db lp_insert_clock_gating [get_flow_config lp_insert_clock_gating]] %>
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_elaborate .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_elaborate .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_elaborate .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_elaborate .feature_values {}}

create_flow_step -name init_genus_user -start_steps {} -end_steps {} -owner design {
  set_db heartbeat 300
  set_db max_cpus_per_server 16
  # Timing attributes  [get_db -category tim]
  #-----------------------------------------------------------------------------
  set_db timing_apply_default_primary_input_assertion true
  set_db timing_analysis_async_checks     async
  
  # Optimization attributes  [get_db -category netlist]
  #-----------------------------------------------------------------------------
  
  # Datapath attributes  [get_db -category dp]
  #-----------------------------------------------------------------------------
  
  # Leakage Power attributes  [get_db -category lp_opt lib_ui]
  #-----------------------------------------------------------------------------
  
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_genus_user .run_count 1}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_genus_user .status success}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_genus_user .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_genus_user .feature_values {}}

create_flow_step -name init_innovus_user -start_steps {} -end_steps {} -owner design {
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
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_innovus_user .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_innovus_user .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_innovus_user .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_innovus_user .feature_values {}}

create_flow_step -name init_tempus_user -start_steps {} -end_steps {} -owner design {
  # Design attributes  [get_db -category design]
  #-----------------------------------------------------------------------------
  
  # Timing attributes  [get_db -category timing]
  #-----------------------------------------------------------------------------
  
  # Delaycal attributes  [get_db -category delaycal]
  #-----------------------------------------------------------------------------
  
  # SI attributes  [get_db -category si]
  #-----------------------------------------------------------------------------
  
  # Opt Signoff attributes  [get_db -category opt_signoff]
  #-----------------------------------------------------------------------------
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_tempus_user .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_tempus_user .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_tempus_user .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_tempus_user .feature_values {}}

create_flow_step -name init_voltus_user -start_steps {} -end_steps {} -owner design {
  # Design attributes  [get_db -category design]
  #-----------------------------------------------------------------------------
  
  # Delaycal attributes  [get_db -category delaycal]
  #-----------------------------------------------------------------------------
  
  # Power attributes  [get_db -category power]
  #-----------------------------------------------------------------------------
  if {[get_feature report_dynamic_ir]} {
    if {[is_flow -inside flow:ir_dynamic]} {
      set_db power_method                 < PLACEHOLDER: DYNAMIC POWER METHOD >
    }
  }
}
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:init_voltus_user .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:init_voltus_user .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:init_voltus_user .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:init_voltus_user .feature_values {}}

create_flow_step -name schedule_syn_generic_report_synth -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_synth -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_syn_generic_report_synth .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_syn_generic_report_synth .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_syn_generic_report_synth .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_syn_generic_report_synth .feature_values {}}

create_flow_step -name schedule_syn_map_report_synth -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_synth -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_syn_map_report_synth .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_syn_map_report_synth .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_syn_map_report_synth .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_syn_map_report_synth .feature_values {}}

create_flow_step -name schedule_syn_opt_report_synth -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_synth -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_syn_opt_report_synth .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_syn_opt_report_synth .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_syn_opt_report_synth .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_syn_opt_report_synth .feature_values {}}

create_flow_step -name schedule_floorplan_report_floorplan -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_floorplan -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_floorplan_report_floorplan .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_floorplan_report_floorplan .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_floorplan_report_floorplan .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_floorplan_report_floorplan .feature_values {}}

create_flow_step -name schedule_prects_report_prects -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_prects -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_prects_report_prects .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_prects_report_prects .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_prects_report_prects .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_prects_report_prects .feature_values {}}

create_flow_step -name schedule_cts_report_postcts -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_postcts -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_cts_report_postcts .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_cts_report_postcts .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_cts_report_postcts .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_cts_report_postcts .feature_values {}}

create_flow_step -name schedule_postcts_report_postcts -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_postcts -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_postcts_report_postcts .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_postcts_report_postcts .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_postcts_report_postcts .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_postcts_report_postcts .feature_values {}}

create_flow_step -name schedule_route_report_postroute -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_postroute -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_route_report_postroute .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_route_report_postroute .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_route_report_postroute .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_route_report_postroute .feature_values {}}

create_flow_step -name schedule_postroute_report_postroute -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_postroute -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_postroute_report_postroute .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_postroute_report_postroute .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_postroute_report_postroute .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_postroute_report_postroute .feature_values {}}

create_flow_step -name schedule_eco_report_postroute -skip_metric -start_steps {} -end_steps {} {
    schedule_flow -flow report_postroute -include_in_metrics
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_eco_report_postroute .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_eco_report_postroute .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_eco_report_postroute .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_eco_report_postroute .feature_values {}}

create_flow_step -name schedule_eco_eco_signoff -start_steps {} -end_steps {} {
    schedule_flow -branch eco -flow signoff -no_sync
  }
if {[is_attribute run_count -obj_type flow_step]} {set_db flow_step:schedule_eco_eco_signoff .run_count 0}
if {[is_attribute status -obj_type flow_step]} {set_db flow_step:schedule_eco_eco_signoff .status not_run}
if {[is_attribute features -obj_type flow_step]} {set_db flow_step:schedule_eco_eco_signoff .features {}}
if {[is_attribute feature_values -obj_type flow_step]} {set_db flow_step:schedule_eco_eco_signoff .feature_values {}}


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {
  #- extend flow report name based on context
  if {[is_flow -quiet -inside flow:sta] || [is_flow -quiet -inside flow:sta_dmmmc] || [is_flow -quiet -inside flow:sta_eco]} {
    if {![regexp {sta$} [get_db flow_report_name]]} {
      set_db flow_report_name [expr {[string is space [get_db flow_report_name]] ? "sta" : "[get_db flow_report_name].sta"}]
    }
  } elseif {[is_flow -quiet -inside flow:ir_early_static] || [is_flow -quiet -inside flow:ir_early_dynamic]} {
    if {![regexp {era$} [get_db flow_report_name]]} {
      set_db flow_report_name [expr {[string is space [get_db flow_report_name]] ? "era" : "[get_db flow_report_name].era"}]
    }
  } elseif {[is_flow -quiet -inside flow:ir_grid] || [is_flow -quiet -inside flow:ir_static] || [is_flow -quiet -inside flow:ir_dynamic] || [is_flow -quiet -inside flow:ir_rampup]} {
    if {![regexp {ir$} [get_db flow_report_name]]} {
      set_db flow_report_name [expr {[string is space [get_db flow_report_name]] ? "ir" : "[get_db flow_report_name].ir"}]
    }
  } elseif {[is_flow -quiet -inside flow:sta_subflows] && [get_db flow_branch] ne {}} {
    set_db flow_report_name [get_db flow_branch]
  } elseif {[regexp {block_start|hier_start|eco_start} [get_db flow_step_current]]} {
    set_db flow_report_name [get_db [lindex [get_db flow_hier_path] end] .name]
  } else {
  }

  #- Create report dir (if necessary)
  file mkdir [file normalize [file join [get_db flow_report_directory] [get_db flow_report_name]]]
}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {std_cells {s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5} pdk_dir {s ../SiliconJackets/cadence_sky130/sky130_release_0.0.4} sram_cells {s ../SiliconJackets/sram_sky130} library_sets {!!map {ff_v1.98_0C {!!map {library_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ff_1.98_0_nldm.lib}}}}} ss_v1.62_125C {!!map {library_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ss_1.62_125_nldm.lib}}}}} tt_v1.8_25C {!!map {library_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_tt_1.8_25_nldm.lib} {s ../SiliconJackets/sram_sky130/lib/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib}}}}}}} opconds {s {}} timing_conditions {!!map {ff_v1.98_0C {!!map {library_sets {!!seq {{s ff_v1.98_0C}}}}} ss_v1.62_125C {!!map {library_sets {!!seq {{s ss_v1.62_125C}}}}} tt_v1.8_25C {!!map {library_sets {!!seq {{s tt_v1.8_25C}}}}}}} rc_corners {!!map {Nominal_25C {!!map {temperature {s 25} qrc_tech_file {s ../SiliconJackets/cadence_sky130/sky130_release_0.0.4/quantus/extraction/typical/qrcTechFile}}}}} delay_corners {!!map {tt_v1.8_25C_Nominal_25 {!!map {rc_corner {!!map {early {s Nominal_25C} late {s Nominal_25C}}} timing_condition {!!map {early {s tt_v1.8_25C} late {s tt_v1.8_25C}}}}} ff_v1.98_0C_Nominal_25 {!!map {rc_corner {!!map {early {s Nominal_25C} late {s Nominal_25C}}} timing_condition {!!map {early {s ff_v1.98_0C} late {s ff_v1.98_0C}}}}} ss_v1.62_125C_Nominal_25 {!!map {rc_corner {!!map {early {s Nominal_25C} late {s Nominal_25C}}} timing_condition {!!map {early {s ss_v1.62_125C} late {s ss_v1.62_125C}}}}}}} constraint_modes {!!map {func {!!map {sdc_files {!!seq {{s ../pipeline_src/base.sdc}}}}}}} analysis_views {!!map {tt_v1.8_25C_Nominal_25_func {!!map {constraint_mode {s func} delay_corner {s tt_v1.8_25C_Nominal_25} is_setup {s 1} is_hold {s 1} is_dynamic {s 1} is_leakage {s 1}}}}} init_netlist_files {s {}} init_physical_files {!!map {lef_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef} {s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef} {s ../SiliconJackets/sram_sky130/lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef}}} oa_ref_libs {s {}} oa_search_libs {s {}}}} init_power_nets {!!seq {{s VDD}}} init_ground_nets {!!seq {{s VSS}}} init_power_intent_files {!!map {cpf {s {}} 1801 {s {}}}} init_def_files {s {}} init_floorplan_file {s {}} init_floorplan_tcl {!!seq {{s ./scripts/floorplan.tcl}}} design_name {s top_lvl} design_process_node {s 130} design_flow_effort {s standard} design_power_effort {s none} dont_use_cells {s {}} add_tieoffs_cells {!!seq {{s TIEHI} {s TIELO}}} add_tieoffs_max_distance {s {}} add_tieoffs_max_fanout {s {}} add_fillers_cells {!!seq {{s FILL1} {s FILL2} {s FILL4} {s FILL8} {s FILL16} {s FILL32} {s FILL64}}} opt_leakage_to_dynamic_ratio {s 0.5} lp_insert_clock_gating {s 1} lp_clock_gating_min_flops {s {}} lp_clock_gating_max_flops {s {}} lp_clock_gating_auto_path_adjust {s {}} cts_buffer_cells {!!seq {{s CLKBUFX2} {s CLKBUFX4} {s CLKBUFX8}}} cts_inverter_cells {!!seq {{s CLKINVX1} {s CLKINVX2} {s CLKINVX4} {s CLKINVX8}}} cts_clock_gating_cells {!!seq {{s ICGX1}}} cts_logic_cells {!!seq {{s CLKAND2X2} {s CLKXOR2X1} {s CLKMX2X2} {s CLKINVX1} {s CLKINVX2} {s CLKINVX4} {s CLKINVX8}}} cts_target_skew {s auto} cts_target_max_transition_time {!!map {top {s 100} trunk {s 100} leaf {s 100}}} routing_layers {!!map {top {s met5} bottom {s met1}}} timing_analysis_aocv {s 0} timing_analysis_socv {s 0}}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {flow_express 0 report_inline {} report_defer 0 report_none 0 report_clp 0 report_lec {} use_common_db 0 report_pba {} dft_simple 0 dft_compressor 0 synth_hybrid 0 synth_ispatial 0 synth_placev2 0 opt_early_cts 0 clock_design 0 clock_flexible_htree 0 opt_clock 0 opt_postcts_hold_disable 0 opt_postcts_split 0 route_filler_disable 0 route_track_opt 0 route_secondary_nets 0 opt_postroute_split 0 opt_route 0 opt_signoff {} opt_em 0 opt_eco 0 sta_use_setup_yaml 0 sta_dmmmc 0 sta_glitch 0 sta_eco 0 report_early_static_ir 0 report_early_dynamic_ir 0 report_grid_resistance 0 report_static_ir {} report_dynamic_ir {} report_rampup 0 report_signal_em 0 report_power_em 0 report_power_parallel 0 ff_setup 0}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type stylus}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {genus innovus tempus quantus voltus}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version 1}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {{before Cadence.plugin.flowkit.read_db.post flow_step:activate_views} {before Cadence.plugin.flowkit.read_db.pre flow_step:activate_views} {after Cadence.plugin.flowkit.read_db.pre flow_step:init_mcpu} {after Cadence.plugin.flowkit.read_db.post flow_step:init_mcpu}}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type stylus}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {genus innovus tempus quantus voltus}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version 1}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {flow_express 0 report_inline {} report_defer 0 report_none 0 report_clp 0 report_lec {} use_common_db 0 report_pba {} dft_simple 0 dft_compressor 0 synth_hybrid 0 synth_ispatial 0 synth_placev2 0 opt_early_cts 0 clock_design 0 clock_flexible_htree 0 opt_clock 0 opt_postcts_hold_disable 0 opt_postcts_split 0 route_filler_disable 0 route_track_opt 0 route_secondary_nets 0 opt_postroute_split 0 opt_route 0 opt_signoff {} opt_em 0 opt_eco 0 sta_use_setup_yaml 0 sta_dmmmc 0 sta_glitch 0 sta_eco 0 report_early_static_ir 0 report_early_dynamic_ir 0 report_grid_resistance 0 report_static_ir {} report_dynamic_ir {} report_rampup 0 report_signal_em 0 report_power_em 0 report_power_parallel 0 ff_setup 0}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {report_inline {feature report_inline required 0 takes_value 0 valid_values {} default 0 desc {Run report generation as part of parent flow versus schedule_flow}} report_lec {feature report_lec required 0 takes_value 0 valid_values {} default 0 desc {Add LEC dofile generation and checks to the flow}} report_pba {feature report_pba required 0 takes_value 0 valid_values {} default 0 desc {Enable PBA analysis and report generation}} opt_signoff {feature opt_signoff required 0 takes_value 0 valid_values {} default 0 desc {Run opt_signoff during implementation flow}} report_static_ir {feature report_static_ir required 0 takes_value 0 valid_values {} default 0 desc {Report static rail analysis}} report_dynamic_ir {feature report_dynamic_ir required 0 takes_value 0 valid_values {} default 0 desc {Report dynamic rail analysis}} setup_views {feature setup_views required 0 takes_value 1 valid_values {} default {} desc {list of setup analysis_views to activate}} hold_views {feature hold_views required 0 takes_value 1 valid_values {} default {} desc {list of hold analysis_views to activate}} dynamic_view {feature dynamic_view required 0 takes_value 1 valid_values {} default {} desc {single dynamic analysis_view to activate}} leakage_view {feature leakage_view required 0 takes_value 1 valid_values {} default {} desc {single leakage analysis_view to activate}}}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {report_inline 0 report_lec 0 report_pba 0 opt_signoff 0 report_static_ir 0 report_dynamic_ir 0 setup_views {} hold_views {} dynamic_view {} leakage_view {}}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common true}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last flow_step:block_finish}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current flow_step:block_finish}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_opt.block_finish}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:schedule_syn_opt_report_synth} step flow_step:schedule_syn_opt_report_synth features {} str synthesis.syn_opt.schedule_syn_opt_report_synth}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {group 0 process_branch 0 trunk_process 1 flowtool_hostname ece-rschsrv.ece.gatech.edu flowtool_pid 172149}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid b8983e0f-5521-44ee-b36d-fdb1e0aa101b}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {rc dbs/syn_map.db top_lvl {}}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {{step {tool genus flow {.name plugin .tool genus} canonical_path {.start_steps flow_step:activate_views} step flow_step:activate_views features {} str activate_views} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.end_steps flow_step:init_mcpu} step flow_step:init_mcpu features {} str init_mcpu} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.start_steps flow_step:activate_views} step flow_step:activate_views features {} str activate_views} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.end_steps flow_step:init_mcpu} step flow_step:init_mcpu features {} str init_mcpu} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_generic.block_start} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:init_elaborate} step flow_step:init_elaborate features {} str synthesis.syn_generic.init_elaborate} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_mmmc} step flow_step:read_mmmc features {} str synthesis.syn_generic.init_design.read_mmmc} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_physical} step flow_step:read_physical features {} str synthesis.syn_generic.init_design.read_physical} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_hdl} step flow_step:read_hdl features {} str synthesis.syn_generic.init_design.read_hdl} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_power_intent} step flow_step:read_power_intent features {} str synthesis.syn_generic.init_design.read_power_intent} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:run_init_design} step flow_step:run_init_design features {} str synthesis.syn_generic.init_design.run_init_design} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_generic.init_genus.init_genus_yaml} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_generic.init_genus.init_genus_user} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:set_dont_use} step flow_step:set_dont_use features {} str synthesis.syn_generic.set_dont_use} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:commit_power_intent} step flow_step:commit_power_intent features {} str synthesis.syn_generic.commit_power_intent} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:run_syn_generic} step flow_step:run_syn_generic features {} str synthesis.syn_generic.run_syn_generic} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_generic.block_finish} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.start_steps flow_step:activate_views} step flow_step:activate_views features {} str activate_views} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.end_steps flow_step:init_mcpu} step flow_step:init_mcpu features {} str init_mcpu} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_map.block_start} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_map.init_genus.init_genus_yaml} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_map.init_genus.init_genus_user} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:run_syn_map} step flow_step:run_syn_map features {} str synthesis.syn_map.run_syn_map} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_map.block_finish} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.start_steps flow_step:activate_views} step flow_step:activate_views features {} str activate_views} status success msg {}} {step {tool genus flow {.name plugin .tool genus} canonical_path {.end_steps flow_step:init_mcpu} step flow_step:init_mcpu features {} str init_mcpu} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_opt.block_start} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_opt.init_genus.init_genus_yaml} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_opt.init_genus.init_genus_user} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:run_syn_opt} step flow_step:run_syn_opt features {} str synthesis.syn_opt.run_syn_opt} status success msg {}} {step {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_opt.block_finish} status success msg {}}}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status success}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_generic.block_start} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:init_elaborate} step flow_step:init_elaborate features {} str synthesis.syn_generic.init_elaborate} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_mmmc} step flow_step:read_mmmc features {} str synthesis.syn_generic.init_design.read_mmmc} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_physical} step flow_step:read_physical features {} str synthesis.syn_generic.init_design.read_physical} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_hdl} step flow_step:read_hdl features {} str synthesis.syn_generic.init_design.read_hdl} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_power_intent} step flow_step:read_power_intent features {} str synthesis.syn_generic.init_design.read_power_intent} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:run_init_design} step flow_step:run_init_design features {} str synthesis.syn_generic.init_design.run_init_design} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_generic.init_genus.init_genus_yaml} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_generic.init_genus.init_genus_user} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:set_dont_use} step flow_step:set_dont_use features {} str synthesis.syn_generic.set_dont_use} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:commit_power_intent} step flow_step:commit_power_intent features {} str synthesis.syn_generic.commit_power_intent} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:run_syn_generic} step flow_step:run_syn_generic features {} str synthesis.syn_generic.run_syn_generic} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_generic.block_finish} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:schedule_syn_generic_report_synth} step flow_step:schedule_syn_generic_report_synth features {} str synthesis.syn_generic.schedule_syn_generic_report_synth} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_map.block_start} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_map.init_genus.init_genus_yaml} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_map.init_genus.init_genus_user} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:run_syn_map} step flow_step:run_syn_map features {} str synthesis.syn_map.run_syn_map} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_map.block_finish} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:schedule_syn_map_report_synth} step flow_step:schedule_syn_map_report_synth features {} str synthesis.syn_map.schedule_syn_map_report_synth} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_opt.block_start} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_opt.init_genus.init_genus_yaml} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_opt.init_genus.init_genus_user} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:run_syn_opt} step flow_step:run_syn_opt features {} str synthesis.syn_opt.run_syn_opt} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_opt.block_finish} {tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:schedule_syn_opt_report_synth} step flow_step:schedule_syn_opt_report_synth features {} str synthesis.syn_opt.schedule_syn_opt_report_synth} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:block_start} step flow_step:block_start features {} str implementation.floorplan.block_start} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.floorplan.init_innovus.init_innovus_yaml} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.floorplan.init_innovus.init_innovus_user} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:init_floorplan} step flow_step:init_floorplan features {} str implementation.floorplan.init_floorplan} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:commit_power_intent} step flow_step:commit_power_intent features {} str implementation.floorplan.commit_power_intent} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:add_tracks} step flow_step:add_tracks features {} str implementation.floorplan.add_tracks} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.floorplan.block_finish} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.floorplan.write_output_screenshot} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:schedule_floorplan_report_floorplan} step flow_step:schedule_floorplan_report_floorplan features {} str implementation.floorplan.schedule_floorplan_report_floorplan} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:block_start} step flow_step:block_start features {} str implementation.prects.block_start} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.prects.init_innovus.init_innovus_yaml} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.prects.init_innovus.init_innovus_user} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:add_clock_spec} step flow_step:add_clock_spec features {} str implementation.prects.add_clock_spec} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:add_clock_route_types} step flow_step:add_clock_route_types features {} str implementation.prects.add_clock_route_types} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:commit_route_types} step flow_step:commit_route_types features {} str implementation.prects.commit_route_types} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:run_place_opt} step flow_step:run_place_opt features {} str implementation.prects.run_place_opt} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.prects.block_finish} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.prects.write_output_screenshot} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:schedule_prects_report_prects} step flow_step:schedule_prects_report_prects features {} str implementation.prects.schedule_prects_report_prects} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:block_start} step flow_step:block_start features {} str implementation.cts.block_start} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.cts.init_innovus.init_innovus_yaml} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.cts.init_innovus.init_innovus_user} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:add_clock_tree} step flow_step:add_clock_tree features {} str implementation.cts.add_clock_tree} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:add_tieoffs} step flow_step:add_tieoffs features {} str implementation.cts.add_tieoffs} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.cts.block_finish} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.cts.write_output_screenshot} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:schedule_cts_report_postcts} step flow_step:schedule_cts_report_postcts features {} str implementation.cts.schedule_cts_report_postcts} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:block_start} step flow_step:block_start features {} str implementation.postcts.block_start} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.postcts.init_innovus.init_innovus_yaml} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.postcts.init_innovus.init_innovus_user} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:run_opt_postcts_hold} step flow_step:run_opt_postcts_hold features {} str implementation.postcts.run_opt_postcts_hold} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.postcts.block_finish} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.postcts.write_output_screenshot} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:schedule_postcts_report_postcts} step flow_step:schedule_postcts_report_postcts features {} str implementation.postcts.schedule_postcts_report_postcts} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:block_start} step flow_step:block_start features {} str implementation.route.block_start} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.route.init_innovus.init_innovus_yaml} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.route.init_innovus.init_innovus_user} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:add_fillers} step flow_step:add_fillers features {} str implementation.route.add_fillers} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:run_route} step flow_step:run_route features {} str implementation.route.run_route} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.route.block_finish} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.route.write_output_screenshot} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:schedule_route_report_postroute} step flow_step:schedule_route_report_postroute features {} str implementation.route.schedule_route_report_postroute} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:block_start} step flow_step:block_start features {} str implementation.postroute.block_start} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.postroute.init_innovus.init_innovus_yaml} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.postroute.init_innovus.init_innovus_user} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:run_opt_postroute} step flow_step:run_opt_postroute features {} str implementation.postroute.run_opt_postroute} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:remove_blockages_halos} step flow_step:remove_blockages_halos features {} str implementation.postroute.remove_blockages_halos} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:fix_antenna} step flow_step:fix_antenna features {} str implementation.postroute.fix_antenna} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:fix_drc} step flow_step:fix_drc features {} str implementation.postroute.fix_drc} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.postroute.block_finish} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:write_output_files} step flow_step:write_output_files features {} str implementation.postroute.write_output_files} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.postroute.write_output_screenshot} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:schedule_postroute_report_postroute} step flow_step:schedule_postroute_report_postroute features {} str implementation.postroute.schedule_postroute_report_postroute} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:innovus_to_tempus} step flow_step:innovus_to_tempus features {} str implementation.postroute.innovus_to_tempus} {tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:innovus_to_quantus} step flow_step:innovus_to_quantus features {} str implementation.postroute.innovus_to_quantus}}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {{{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_generic.block_start} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:init_elaborate} step flow_step:init_elaborate features {} str synthesis.syn_generic.init_elaborate} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_mmmc} step flow_step:read_mmmc features {} str synthesis.syn_generic.init_design.read_mmmc} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_physical} step flow_step:read_physical features {} str synthesis.syn_generic.init_design.read_physical} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_hdl} step flow_step:read_hdl features {} str synthesis.syn_generic.init_design.read_hdl} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:read_power_intent} step flow_step:read_power_intent features {} str synthesis.syn_generic.init_design.read_power_intent} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_design .steps flow_step:run_init_design} step flow_step:run_init_design features {} str synthesis.syn_generic.init_design.run_init_design} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_generic.init_genus.init_genus_yaml} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_generic.init_genus.init_genus_user} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:set_dont_use} step flow_step:set_dont_use features {} str synthesis.syn_generic.set_dont_use} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:commit_power_intent} step flow_step:commit_power_intent features {} str synthesis.syn_generic.commit_power_intent} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:run_syn_generic} step flow_step:run_syn_generic features {} str synthesis.syn_generic.run_syn_generic} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_generic.block_finish} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_generic .steps flow_step:schedule_syn_generic_report_synth} step flow_step:schedule_syn_generic_report_synth features {} str synthesis.syn_generic.schedule_syn_generic_report_synth} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_map.block_start} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_map.init_genus.init_genus_yaml} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_map.init_genus.init_genus_user} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:run_syn_map} step flow_step:run_syn_map features {} str synthesis.syn_map.run_syn_map} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_map.block_finish} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_map .steps flow_step:schedule_syn_map_report_synth} step flow_step:schedule_syn_map_report_synth features {} str synthesis.syn_map.schedule_syn_map_report_synth} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_start} step flow_step:block_start features {} str synthesis.syn_opt.block_start} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow:init_genus .steps flow_step:init_genus_yaml} step flow_step:init_genus_yaml features {} str synthesis.syn_opt.init_genus.init_genus_yaml} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow:init_genus .steps flow_step:init_genus_user} step flow_step:init_genus_user features {} str synthesis.syn_opt.init_genus.init_genus_user} 0 not_run} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:run_syn_opt} step flow_step:run_syn_opt features {} str synthesis.syn_opt.run_syn_opt} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:block_finish} step flow_step:block_finish features {} str synthesis.syn_opt.block_finish} 1 success} {{tool genus flow flow:flow_current canonical_path {.steps flow:synthesis .steps flow:syn_opt .steps flow_step:schedule_syn_opt_report_synth} step flow_step:schedule_syn_opt_report_synth features {} str synthesis.syn_opt.schedule_syn_opt_report_synth} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:block_start} step flow_step:block_start features {} str implementation.floorplan.block_start} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.floorplan.init_innovus.init_innovus_yaml} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.floorplan.init_innovus.init_innovus_user} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:init_floorplan} step flow_step:init_floorplan features {} str implementation.floorplan.init_floorplan} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:commit_power_intent} step flow_step:commit_power_intent features {} str implementation.floorplan.commit_power_intent} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:add_tracks} step flow_step:add_tracks features {} str implementation.floorplan.add_tracks} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.floorplan.block_finish} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.floorplan.write_output_screenshot} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:floorplan .steps flow_step:schedule_floorplan_report_floorplan} step flow_step:schedule_floorplan_report_floorplan features {} str implementation.floorplan.schedule_floorplan_report_floorplan} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:block_start} step flow_step:block_start features {} str implementation.prects.block_start} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.prects.init_innovus.init_innovus_yaml} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.prects.init_innovus.init_innovus_user} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:add_clock_spec} step flow_step:add_clock_spec features {} str implementation.prects.add_clock_spec} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:add_clock_route_types} step flow_step:add_clock_route_types features {} str implementation.prects.add_clock_route_types} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:commit_route_types} step flow_step:commit_route_types features {} str implementation.prects.commit_route_types} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:run_place_opt} step flow_step:run_place_opt features {} str implementation.prects.run_place_opt} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.prects.block_finish} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.prects.write_output_screenshot} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:prects .steps flow_step:schedule_prects_report_prects} step flow_step:schedule_prects_report_prects features {} str implementation.prects.schedule_prects_report_prects} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:block_start} step flow_step:block_start features {} str implementation.cts.block_start} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.cts.init_innovus.init_innovus_yaml} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.cts.init_innovus.init_innovus_user} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:add_clock_tree} step flow_step:add_clock_tree features {} str implementation.cts.add_clock_tree} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:add_tieoffs} step flow_step:add_tieoffs features {} str implementation.cts.add_tieoffs} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.cts.block_finish} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.cts.write_output_screenshot} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:cts .steps flow_step:schedule_cts_report_postcts} step flow_step:schedule_cts_report_postcts features {} str implementation.cts.schedule_cts_report_postcts} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:block_start} step flow_step:block_start features {} str implementation.postcts.block_start} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.postcts.init_innovus.init_innovus_yaml} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.postcts.init_innovus.init_innovus_user} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:run_opt_postcts_hold} step flow_step:run_opt_postcts_hold features {} str implementation.postcts.run_opt_postcts_hold} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.postcts.block_finish} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.postcts.write_output_screenshot} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postcts .steps flow_step:schedule_postcts_report_postcts} step flow_step:schedule_postcts_report_postcts features {} str implementation.postcts.schedule_postcts_report_postcts} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:block_start} step flow_step:block_start features {} str implementation.route.block_start} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.route.init_innovus.init_innovus_yaml} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.route.init_innovus.init_innovus_user} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:add_fillers} step flow_step:add_fillers features {} str implementation.route.add_fillers} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:run_route} step flow_step:run_route features {} str implementation.route.run_route} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.route.block_finish} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.route.write_output_screenshot} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:route .steps flow_step:schedule_route_report_postroute} step flow_step:schedule_route_report_postroute features {} str implementation.route.schedule_route_report_postroute} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:block_start} step flow_step:block_start features {} str implementation.postroute.block_start} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow:init_innovus .steps flow_step:init_innovus_yaml} step flow_step:init_innovus_yaml features {} str implementation.postroute.init_innovus.init_innovus_yaml} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow:init_innovus .steps flow_step:init_innovus_user} step flow_step:init_innovus_user features {} str implementation.postroute.init_innovus.init_innovus_user} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:run_opt_postroute} step flow_step:run_opt_postroute features {} str implementation.postroute.run_opt_postroute} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:remove_blockages_halos} step flow_step:remove_blockages_halos features {} str implementation.postroute.remove_blockages_halos} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:fix_antenna} step flow_step:fix_antenna features {} str implementation.postroute.fix_antenna} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:fix_drc} step flow_step:fix_drc features {} str implementation.postroute.fix_drc} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:block_finish} step flow_step:block_finish features {} str implementation.postroute.block_finish} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:write_output_files} step flow_step:write_output_files features {} str implementation.postroute.write_output_files} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:write_output_screenshot} step flow_step:write_output_screenshot features {} str implementation.postroute.write_output_screenshot} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:schedule_postroute_report_postroute} step flow_step:schedule_postroute_report_postroute features {} str implementation.postroute.schedule_postroute_report_postroute} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:innovus_to_tempus} step flow_step:innovus_to_tempus features {} str implementation.postroute.innovus_to_tempus} 0 not_run} {{tool innovus flow flow:flow_current canonical_path {.steps flow:implementation .steps flow:postroute .steps flow_step:innovus_to_quantus} step flow_step:innovus_to_quantus features {} str implementation.postroute.innovus_to_quantus} 0 not_run}}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {
  #- extend flow report name based on context
  if {[is_flow -quiet -inside flow:sta] || [is_flow -quiet -inside flow:sta_dmmmc] || [is_flow -quiet -inside flow:sta_eco]} {
    if {![regexp {sta$} [get_db flow_report_name]]} {
      set_db flow_report_name [expr {[string is space [get_db flow_report_name]] ? "sta" : "[get_db flow_report_name].sta"}]
    }
  } elseif {[is_flow -quiet -inside flow:ir_early_static] || [is_flow -quiet -inside flow:ir_early_dynamic]} {
    if {![regexp {era$} [get_db flow_report_name]]} {
      set_db flow_report_name [expr {[string is space [get_db flow_report_name]] ? "era" : "[get_db flow_report_name].era"}]
    }
  } elseif {[is_flow -quiet -inside flow:ir_grid] || [is_flow -quiet -inside flow:ir_static] || [is_flow -quiet -inside flow:ir_dynamic] || [is_flow -quiet -inside flow:ir_rampup]} {
    if {![regexp {ir$} [get_db flow_report_name]]} {
      set_db flow_report_name [expr {[string is space [get_db flow_report_name]] ? "ir" : "[get_db flow_report_name].ir"}]
    }
  } elseif {[is_flow -quiet -inside flow:sta_subflows] && [get_db flow_branch] ne {}} {
    set_db flow_report_name [get_db flow_branch]
  } elseif {[regexp {block_start|hier_start|eco_start} [get_db flow_step_current]]} {
    set_db flow_report_name [get_db [lindex [get_db flow_hier_path] end] .name]
  } else {
  }

  #- Create report dir (if necessary)
  file mkdir [file normalize [file join [get_db flow_report_directory] [get_db flow_report_name]]]
}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 25}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top flow:flow_current}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {flow:flow_current flow:synthesis flow:syn_opt}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/design/scripts/flow.yaml}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {%TAG ! tag:flow.stylus.cadence.com,0.1:
---
#############################################################################################
# Flow  Setup
#############################################################################################
# Generated using: Flowkit 23.10-a010_1
# Command: write_flow_template -type stylus -tools {genus innovus tempus quantus voltus} -optional_feature {report_inline report_lec opt_signoff report_pba report_static_ir report_dynamic_ir}

# Provide a memorable comment to describe this yaml file
remarks:

# Directory root of the flow scripts, can be used with file join to normalize paths to flow files.
# Relative paths are normalized in context of the current file's location
init_flow_directory: .

# Specify scripts that will be automatically sourced in all tools
#   these scripts will be run every time each tool initializes
include_scripts:

# Specify scripts that define procs
#   these are available during flow_step execution
include_procs:

#############################################################################################
# Feature Definition
#############################################################################################
# +--------------------+-------------------------------------------------------------------+----------+---------+-------+
# | Feature            | Description                                                       | Value    | Default | Valid |
# +--------------------+-------------------------------------------------------------------+----------+---------+-------+
# | -dynamic_view      | single dynamic analysis_view to activate                          |          |         |       |
# | -hold_views        | list of hold analysis_views to activate                           |          |         |       |
# | -leakage_view      | single leakage analysis_view to activate                          |          |         |       |
# | -opt_signoff       | Run opt_signoff during implementation flow                        | optional |         | 0 1 {} |
# | -report_dynamic_ir | Report dynamic rail analysis                                      | optional |         | 0 1 {} |
# --- the following features are mutually exclusive (report_style group)
# | -report_inline     | Run report generation as part of parent flow versus schedule_flow | optional |         | 0 1 {} |
# ---
# | -report_lec        | Add LEC dofile generation and checks to the flow                  | optional |         | 0 1 {} |
# | -report_pba        | Enable PBA analysis and report generation                         | optional |         | 0 1 {} |
# | -report_static_ir  | Report static rail analysis                                       | optional |         | 0 1 {} |
# | -setup_views       | list of setup analysis_views to activate                          |          |         |       |
# +--------------------+-------------------------------------------------------------------+----------+---------+-------+
define_feature:
  report_inline:
    description: Run report generation as part of parent flow versus schedule_flow
    type: bool
  report_lec:
    description: Add LEC dofile generation and checks to the flow
    type: bool
  report_pba:
    description: Enable PBA analysis and report generation
    type: bool
  opt_signoff:
    description: Run opt_signoff during implementation flow
    type: bool
  report_static_ir:
    description: Report static rail analysis
    type: bool
  report_dynamic_ir:
    description: Report dynamic rail analysis
    type: bool
  setup_views:
    description: list of setup analysis_views to activate
    type: string
    required: 0
  hold_views:
    description: list of hold analysis_views to activate
    type: string
    required: 0
  dynamic_view:
    description: single dynamic analysis_view to activate
    type: string
    required: 0
  leakage_view:
    description: single leakage analysis_view to activate
    type: string
    required: 0

# Optional features in the above table can enabled below by adding them as space separated options
#   eg: features: -report_inline -report_lec
features:

#############################################################################################
# Flow Step Definitions
#
# default_flow_steps : Flow steps that come from the tool templates (write_flow_template)
#                       DO NOT MODIFY
# tech_flow_steps    : Technology dependent flow steps that are required to place, route and
#                       optimize a DRC clean design
# ip_flow_steps      : Flow steps for integrating IP
# user_flow_steps    : Flow steps which require user modifications to replace PLACEHOLDER
#                       content and fine tune the flow for specific needs
#
#############################################################################################
default_flow_steps:
  - flow/common_flows.tcl
  - flow/common_steps.tcl
  - flow/genus_steps.tcl
  - flow/innovus_steps.tcl
  - flow/tempus_steps.tcl
  - flow/voltus_steps.tcl

tech_flow_steps:

ip_flow_steps:

user_flow_steps:
  - design_config.tcl
  - eco_config.tcl
  - flow_config.tcl
  - genus_config.tcl
  - innovus_config.tcl
  - tempus_config.tcl
  - voltus_config.tcl

# Specify the flows that will be run, in order
flow_current: synthesis implementation

#############################################################################################
# General Flow Configuration
#############################################################################################

# Identify the simple design data yaml file to be used
design_yaml: setup.yaml

#############################################################################################
# Flow Definitions
#
#  Common modifications are:
#    1. comment out a step by adding in a '#', eg  #  - step_does_not_run:
#    2. delete a line to remove the step
#    3. reorder defined flow_steps and flows
#    4. add a single command inline,           eg # CMD_<step_name>: <cmd>
#    5. add file contents inline,              eg # FILE_<step_name>: <filename>
#    6. change the parameters, see the comment at the end of each line
#############################################################################################
flows:

#-------------------------------------------------------------------------------
# synthesis
#-------------------------------------------------------------------------------
  synthesis:
    args: -tool genus -owner cadence -skip_metric -tool_options -disable_user_startup
    features:
    steps:
      - syn_generic:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_elaborate:
            - init_design:
                args: -owner cadence
                features:
                steps:
                  - read_mmmc:
                  - read_physical:
                  - read_hdl:
                  - read_power_intent:
                  - run_init_design:
            - init_genus:
            - set_dont_use:
            - commit_power_intent:
            - run_syn_generic:
            - block_finish:
            - report_synth:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_synth -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
      - syn_map:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_genus:
            - run_syn_map:
            - block_finish:
            - report_synth:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_synth -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
            - genus_to_lec:
                enabled: "report_lec"
      - syn_opt:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_genus:
            - run_syn_opt:
            - block_finish:
            - report_synth:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_synth -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
            - genus_to_lec:
                enabled: "report_lec"

#-------------------------------------------------------------------------------
# implementation
#-------------------------------------------------------------------------------
  implementation:
    args: -tool innovus -owner cadence -skip_metric -tool_options -disable_user_startup
    features:
    steps:
      - floorplan:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_innovus:
            - init_floorplan:
            - commit_power_intent:
            - add_tracks:
            - block_finish:
            - write_output_screenshot:
            - report_floorplan:
                args: -owner cadence
                features:
                enabled: "!report_none && report_inline && !report_defer"
                steps:
                  - report_start:
                  - init_innovus:
                  - report_check_design:
                  - report_area_innovus:
                  - report_route_drc:
                  - report_finish:
            - SCHEDULE:
                args: -flow report_floorplan -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
            - innovus_to_lec:
                enabled: "report_lec"
      - prects:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_innovus:
            - add_clock_spec:
            - add_clock_route_types:
            - commit_route_types:
            - run_place_opt:
            - block_finish:
            - write_output_screenshot:
            - report_prects:
                args: -owner cadence
                features:
                enabled: "!report_none && report_inline && !report_defer"
                steps:
                  - report_start:
                  - init_innovus:
                  - report_check_design:
                  - report_area_innovus:
                  - report_late_summary_innovus:
                  - report_late_paths:
                  - report_power_innovus:
                  - report_finish:
            - SCHEDULE:
                args: -flow report_prects -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
      - cts:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_innovus:
            - add_clock_tree:
            - add_tieoffs:
            - block_finish:
            - write_output_screenshot:
            - report_postcts:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_postcts -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
      - postcts:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_innovus:
            - run_opt_postcts_hold:
            - block_finish:
            - write_output_screenshot:
            - report_postcts:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_postcts -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
      - route:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_innovus:
            - add_fillers:
            - run_route:
            - block_finish:
            - write_output_screenshot:
            - report_postroute:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_postroute -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
      - postroute:
          args: -owner cadence
          features:
          steps:
            - block_start:
            - init_innovus:
            - run_opt_postroute:
            - remove_blockages_halos:
            - fix_antenna:
            - fix_drc:
            - block_finish:
            - write_output_files:
            - write_output_screenshot:
            - report_postroute:
                enabled: "!report_none && report_inline && !report_defer"
            - SCHEDULE:
                args: -flow report_postroute -include_in_metrics
                enabled: "!report_none && !report_inline && !report_defer"
            - innovus_to_lec:
                enabled: "report_lec"
            - innovus_to_tempus:
            - innovus_to_quantus:
      # Signoff Commented out to prevent flow error due to bug
      #      - SCHEDULE_postroute: -flow signoff -no_sync
      #- opt_signoff:
      #    args: -owner cadence
      #    features:
      #    enabled: "!flow_express && opt_signoff"
      #    steps:
      #      - block_start:
      #      - init_innovus:
      #      - run_opt_signoff:
      #      - block_finish:
      #      - report_postroute:
      #          enabled: "!report_none && report_inline && !report_defer"
      #      - SCHEDULE:
      #          args: -flow report_postroute -include_in_metrics
      #          enabled: "!report_none && !report_inline && !report_defer"
      #      - innovus_to_tempus:
      #      - innovus_to_quantus:
      #      - SCHEDULE_opt_signoff: -flow signoff -no_sync

#-------------------------------------------------------------------------------
# init_genus
#-------------------------------------------------------------------------------
  init_genus:
    args: -owner cadence -tool genus
    features:
    steps:
      - init_genus_yaml:
      - init_genus_user:

#-------------------------------------------------------------------------------
# init_innovus
#-------------------------------------------------------------------------------
  init_innovus:
    args: -owner cadence -tool innovus
    features:
    steps:
      - init_innovus_yaml:
      - init_innovus_user:

#-------------------------------------------------------------------------------
# eco
#-------------------------------------------------------------------------------
  eco:
    args: -owner cadence -tool innovus -tool_options -disable_user_startup
    features:
    steps:
      - eco_start:
      - init_innovus:
      - init_eco:
      - run_place_eco:
      - run_route_eco:
      - eco_finish:
      - report_postroute:
          enabled: "!report_none && report_inline && !report_defer"
      - SCHEDULE:
          args: -flow report_postroute -include_in_metrics
          enabled: "!report_none && !report_inline && !report_defer"
      - innovus_to_tempus:
      - innovus_to_quantus:
      - SCHEDULE_eco: -flow signoff -no_sync

#-------------------------------------------------------------------------------
# report_synth
#-------------------------------------------------------------------------------
  report_synth:
    args: -owner cadence -tool genus -tool_options -disable_user_startup
    features:
    steps:
      - report_start:
      - init_genus:
      - report_area_genus:
      - report_late_summary_genus:
      - report_late_paths:
      - report_power_genus:
      - report_finish:

#-------------------------------------------------------------------------------
# fv_genus
#-------------------------------------------------------------------------------
  fv_genus:
    args: -owner cadence -tool genus
    features:
    enabled: "report_lec"
    steps:
      - genus_to_lec:

#-------------------------------------------------------------------------------
# lec
#-------------------------------------------------------------------------------
  lec:
    args: -owner cadence -tool flowtool
    features:
    enabled: "report_lec"
    steps:
      - run_lec:

#-------------------------------------------------------------------------------
# report_postcts
#-------------------------------------------------------------------------------
  report_postcts:
    args: -owner cadence -tool innovus -tool_options -disable_user_startup
    features:
    steps:
      - report_start:
      - init_innovus:
      - report_check_design:
      - report_area_innovus:
      - report_early_summary_innovus:
      - report_early_paths:
      - report_late_summary_innovus:
      - report_late_paths:
      - report_clock_timing:
      - report_power_innovus:
      - report_finish:

#-------------------------------------------------------------------------------
# report_postroute
#-------------------------------------------------------------------------------
  report_postroute:
    args: -owner cadence -tool innovus -tool_options -disable_user_startup
    features:
    steps:
      - report_start:
      - init_innovus:
      - report_check_design:
      - report_area_innovus:
      - report_early_summary_innovus:
      - report_early_paths:
      - report_early_summary_pba:
          enabled: "report_pba"
      - report_early_paths_pba:
          enabled: "report_pba"
      - report_late_summary_innovus:
      - report_late_paths:
      - report_late_summary_pba:
          enabled: "report_pba"
      - report_late_paths_pba:
          enabled: "report_pba"
      - report_clock_timing:
      - report_power_innovus:
      - report_route_drc:
      - report_route_density:
      - report_finish:

#-------------------------------------------------------------------------------
# fv_innovus
#-------------------------------------------------------------------------------
  fv_innovus:
    args: -owner cadence -tool innovus
    features:
    enabled: "report_lec"
    steps:
      - innovus_to_lec:

#-------------------------------------------------------------------------------
# extract
#-------------------------------------------------------------------------------
  extract:
    args: -owner cadence -tool flowtool
    features:
    steps:
      - run_quantus:

#-------------------------------------------------------------------------------
# sta
#-------------------------------------------------------------------------------
  sta:
    args: -owner cadence -tool tempus -tool_options -disable_user_startup
    features:
    steps:
      - signoff_start:
      - init_tempus:
          args: -owner cadence
          features:
          steps:
            - init_tempus_yaml:
            - init_tempus_user:
      - read_parasitics:
      - set_propagated_clocks:
      - update_timing:
      - check_timing:
      - report_late_summary:
      - report_late_paths:
      - report_late_summary_pba:
          enabled: "report_pba"
      - report_late_paths_pba:
          enabled: "report_pba"
      - report_early_summary:
      - report_early_paths:
      - report_early_summary_pba:
          enabled: "report_pba"
      - report_early_paths_pba:
          enabled: "report_pba"
      - signoff_finish:

#-------------------------------------------------------------------------------
# init_voltus
#-------------------------------------------------------------------------------
  init_voltus:
    args: -owner cadence -tool voltus
    features:
    steps:
      - init_voltus_yaml:
      - init_voltus_user:

#-------------------------------------------------------------------------------
# ir_static
#-------------------------------------------------------------------------------
  ir_static:
    args: -owner cadence -tool voltus -tool_options -disable_user_startup
    features:
    enabled: "report_static_ir"
    steps:
      - signoff_start:
      - init_voltus:
      - read_parasitics:
      - add_switching_activity:
      - set_pg_nets:
      - report_power:
      - set_power_data:
      - set_rail_analysis:
      - report_rail:
      - signoff_finish:

#-------------------------------------------------------------------------------
# ir_dynamic
#-------------------------------------------------------------------------------
  ir_dynamic:
    args: -owner cadence -tool voltus -tool_options -disable_user_startup
    features:
    enabled: "report_dynamic_ir"
    steps:
      - signoff_start:
      - init_voltus:
      - read_parasitics:
      - add_switching_activity:
      - set_pg_nets:
      - report_power:
      - set_power_data:
      - set_rail_analysis:
      - report_rail:
      - signoff_finish:

#-------------------------------------------------------------------------------
# signoff
#-------------------------------------------------------------------------------
  signoff:
    args: -owner cadence -tool innovus
    features:
    steps:
      - schedule_signoff_subflows:
}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/design/scripts}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {std_cells {s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5} pdk_dir {s ../SiliconJackets/cadence_sky130/sky130_release_0.0.4} sram_cells {s ../SiliconJackets/sram_sky130} library_sets {!!map {ff_v1.98_0C {!!map {library_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ff_1.98_0_nldm.lib}}}}} ss_v1.62_125C {!!map {library_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ss_1.62_125_nldm.lib}}}}} tt_v1.8_25C {!!map {library_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_tt_1.8_25_nldm.lib} {s ../SiliconJackets/sram_sky130/lib/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib}}}}}}} opconds {s {}} timing_conditions {!!map {ff_v1.98_0C {!!map {library_sets {!!seq {{s ff_v1.98_0C}}}}} ss_v1.62_125C {!!map {library_sets {!!seq {{s ss_v1.62_125C}}}}} tt_v1.8_25C {!!map {library_sets {!!seq {{s tt_v1.8_25C}}}}}}} rc_corners {!!map {Nominal_25C {!!map {temperature {s 25} qrc_tech_file {s ../SiliconJackets/cadence_sky130/sky130_release_0.0.4/quantus/extraction/typical/qrcTechFile}}}}} delay_corners {!!map {tt_v1.8_25C_Nominal_25 {!!map {rc_corner {!!map {early {s Nominal_25C} late {s Nominal_25C}}} timing_condition {!!map {early {s tt_v1.8_25C} late {s tt_v1.8_25C}}}}} ff_v1.98_0C_Nominal_25 {!!map {rc_corner {!!map {early {s Nominal_25C} late {s Nominal_25C}}} timing_condition {!!map {early {s ff_v1.98_0C} late {s ff_v1.98_0C}}}}} ss_v1.62_125C_Nominal_25 {!!map {rc_corner {!!map {early {s Nominal_25C} late {s Nominal_25C}}} timing_condition {!!map {early {s ss_v1.62_125C} late {s ss_v1.62_125C}}}}}}} constraint_modes {!!map {func {!!map {sdc_files {!!seq {{s ../pipeline_src/base.sdc}}}}}}} analysis_views {!!map {tt_v1.8_25C_Nominal_25_func {!!map {constraint_mode {s func} delay_corner {s tt_v1.8_25C_Nominal_25} is_setup {s 1} is_hold {s 1} is_dynamic {s 1} is_leakage {s 1}}}}} init_netlist_files {s {}} init_physical_files {!!map {lef_files {!!seq {{s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.tlef} {s ../SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lef/sky130_scl_9T.lef} {s ../SiliconJackets/sram_sky130/lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef}}} oa_ref_libs {s {}} oa_search_libs {s {}}}} init_power_nets {!!seq {{s VDD}}} init_ground_nets {!!seq {{s VSS}}} init_power_intent_files {!!map {cpf {s {}} 1801 {s {}}}} init_def_files {s {}} init_floorplan_file {s {}} init_floorplan_tcl {!!seq {{s ./scripts/floorplan.tcl}}} design_name {s top_lvl} design_process_node {s 130} design_flow_effort {s standard} design_power_effort {s none} dont_use_cells {s {}} add_tieoffs_cells {!!seq {{s TIEHI} {s TIELO}}} add_tieoffs_max_distance {s {}} add_tieoffs_max_fanout {s {}} add_fillers_cells {!!seq {{s FILL1} {s FILL2} {s FILL4} {s FILL8} {s FILL16} {s FILL32} {s FILL64}}} opt_leakage_to_dynamic_ratio {s 0.5} lp_insert_clock_gating {s 1} lp_clock_gating_min_flops {s {}} lp_clock_gating_max_flops {s {}} lp_clock_gating_auto_path_adjust {s {}} cts_buffer_cells {!!seq {{s CLKBUFX2} {s CLKBUFX4} {s CLKBUFX8}}} cts_inverter_cells {!!seq {{s CLKINVX1} {s CLKINVX2} {s CLKINVX4} {s CLKINVX8}}} cts_clock_gating_cells {!!seq {{s ICGX1}}} cts_logic_cells {!!seq {{s CLKAND2X2} {s CLKXOR2X1} {s CLKMX2X2} {s CLKINVX1} {s CLKINVX2} {s CLKINVX4} {s CLKINVX8}}} cts_target_skew {s auto} cts_target_max_transition_time {!!map {top {s 100} trunk {s 100} leaf {s 100}}} routing_layers {!!map {top {s met5} bottom {s met1}}} timing_analysis_aocv {s 0} timing_analysis_socv {s 0}}}}}
if {[is_attribute flow_feature_report_inline -obj_type root]} {set_db flow_feature_report_inline 0}
if {[is_attribute flow_feature_report_lec -obj_type root]} {set_db flow_feature_report_lec 0}
if {[is_attribute flow_feature_report_pba -obj_type root]} {set_db flow_feature_report_pba 0}
if {[is_attribute flow_feature_opt_signoff -obj_type root]} {set_db flow_feature_opt_signoff 0}
if {[is_attribute flow_feature_report_static_ir -obj_type root]} {set_db flow_feature_report_static_ir 0}
if {[is_attribute flow_feature_report_dynamic_ir -obj_type root]} {set_db flow_feature_report_dynamic_ir 0}
if {[is_attribute flow_feature_setup_views -obj_type root]} {set_db flow_feature_setup_views {}}
if {[is_attribute flow_feature_hold_views -obj_type root]} {set_db flow_feature_hold_views {}}
if {[is_attribute flow_feature_dynamic_view -obj_type root]} {set_db flow_feature_dynamic_view {}}
if {[is_attribute flow_feature_leakage_view -obj_type root]} {set_db flow_feature_leakage_view {}}

#############################################################
#####   User Defined Attributes   ###########################

