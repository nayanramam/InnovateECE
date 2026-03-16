# Cadence Genus(TM) Synthesis Solution, Version 25.11-s095_1, built Aug 12 2025 10:59:05

# Date: Sun Mar 15 21:42:40 2026
# Host: ece-rschsrv.ece.gatech.edu (x86_64 w/Linux 4.18.0-553.89.1.el8_10.x86_64) (22cores*88cpus*2physical cpus*Intel(R) Xeon(R) CPU E5-2699 v4 @ 2.20GHz 56320KB)
# OS:   Red Hat Enterprise Linux 8.10 (Ootpa)

if {[catch {init_flow  {flow_script {} yaml_script /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/scripts/flow.yaml flow_no_check 0 parent_uuid c809de4d-ff01-4efa-883d-d1debcbe2251 previous_uuid {} top_dir /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design flow_dir ./. status_file /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/flow.status.d/syn_opt.report_synth metrics_file /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/flow.metrics.d/syn_opt.report_synth run_tag {} db {cdb /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/dbs/syn_opt.cdb Core {}} db_is_ref_run 0 branch {} caller_data {group 0 process_branch 3 trunk_process 0 flowtool_hostname ece-rschsrv.ece.gatech.edu flowtool_pid 2469014} flow {flow flow:report_synth tool genus tool_options -disable_user_startup no_sync 0 sync 0 db {cdb dbs/syn_opt.cdb Core {}} dir ./. branch {} caller_data {group 0 process_branch 3} include_in_metrics 1 parent_uuid c809de4d-ff01-4efa-883d-d1debcbe2251 after {} defer 0 child_of {flow:flow_current flow:synthesis flow:syn_opt}} flow_name flow:report_synth first_step {tool genus flow flow:report_synth canonical_path {.steps flow_step:report_start} step flow_step:report_start features {} str report_start child_of {flow:flow_current flow:synthesis flow:syn_opt}} interactive 0 interactive_run 0 enabled_features {} inject_tcl {} trunk_process 0 aum_upload false tool_options -disable_user_startup overwrite 0 last_step {tool genus flow flow:report_synth canonical_path {.steps flow_step:report_finish} step flow_step:report_finish features {} str report_finish child_of {flow:flow_current flow:synthesis flow:syn_opt}} child_of {flow:flow_current flow:synthesis flow:syn_opt} log_prefix /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/logs/syn_opt.report_synth}; run_flow -from {tool genus flow flow:report_synth canonical_path {.steps flow_step:report_start} step flow_step:report_start features {} str report_start child_of {flow:flow_current flow:synthesis flow:syn_opt}} -to {tool genus flow flow:report_synth canonical_path {.steps flow_step:report_finish} step flow_step:report_finish features {} str report_finish child_of {flow:flow_current flow:synthesis flow:syn_opt}}} msg]} { puts [concat {Tcl error:} $errorInfo]; set fp [open {/nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/flow.status.d/syn_opt.report_synth} a]; puts $fp {}; puts $fp [list [list script run_tcl status error flow {flow:report_synth} branch {} flow_working_directory {./.} flow_starting_db {cdb /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/dbs/syn_opt.cdb Core {}} {tool_options} {-disable_user_startup} steps_run [get_db flow_step_canonical_current] msg $msg]]; close $fp; exit 1 }; exit 0
#@ (init_flow): cd /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design
#@ (init_flow): read_metric -id current /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/flow.metrics.d/syn_opt.report_synth -previous 
#@ (init_flow): read_flow /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/scripts/flow.yaml
#@ (flow_step:report_start)  2:   apply {{} {
#@                            :     set db [get_db flow_starting_db]
#@                            :     set flow [lindex [get_db flow_hier_path] end]
#@                            :     set setup_views [get_feature -obj $flow setup_views]
#@                            :     set hold_views [get_feature -obj $flow hold_views]
#@                            :     set leakage_view [get_feature -obj $flow leakage_view]
#@                            :     set dynamic_view [get_feature -obj $flow dynamic_view]
#@                            :   
#@                            :     if {($setup_views ne "") || ($hold_views ne "") || ($leakage_view ne "") || ($dynamic_view ne "")} {
#@                            :       #- use read_db args for DB types and set_analysis_views for TCL
#@                            :       if {([llength [get_db analysis_views]]) > 0 &&  ([lindex $db 0] eq {tcl} || [lindex $db 0] in {enc cdb} && [file isfile [lindex $db 1]])} {
#@                            :         set cmd "set_analysis_view"
#@                            :         if {$setup_views ne ""} {
#@                            :           append cmd " -setup [list $setup_views]"
#@                            :         } else {
#@                            :           append cmd " -setup [list [get_db [get_db analysis_views -if .is_setup] .name]]"
#@                            :         }
#@                            :         if {$hold_views ne ""} {
#@                            :           append cmd " -hold [list $hold_views]"
#@                            :         } else {
#@                            :           append cmd " -hold [list [get_db [get_db analysis_views -if .is_hold] .name]]"
#@                            :         }
#@                            :         if {$leakage_view ne ""} {
#@                            :           append cmd " -leakage [list $leakage_view]"
#@                            :         } else {
#@                            :           if {[llength [get_db analysis_views -if .is_leakage]] > 0} {
#@                            :             append cmd " -leakage [list [get_db [get_db analysis_views -if .is_leakage] .name]]"
#@                            :           }
#@                            :         }
#@                            :         if {$dynamic_view ne ""} {
#@                            :           append cmd " -dynamic [list $dynamic_view]"
#@                            :         } else {
#@                            :           if {[llength [get_db analysis_views -if .is_dynamic]] > 0} {
#@                            :             append cmd " -dynamic [list [get_db [get_db analysis_views -if .is_dynamic] .name]]"
#@                            :           }
#@                            :         }
#@                            :         eval $cmd
#@                            :       } elseif {[llength [get_db analysis_views]] == 0} {
#@                            :         set cmd "set_flowkit_read_db_args"
#@                            :         if {$setup_views ne ""} {
#@                            :           append cmd " -setup_views [list $setup_views]"
#@                            :         }
#@                            :         if {$hold_views ne ""} {
#@                            :           append cmd " -hold_views [list $hold_views]"
#@                            :         }
#@                            :         if {$leakage_view ne ""} {
#@                            :           append cmd " -leakage_view [list $leakage_view]"
#@                            :         }
#@                            :         if {$dynamic_view ne ""} {
#@                            :           append cmd " -dynamic_view [list $dynamic_view]"
#@                            :         }
#@                            :         eval $cmd
#@                            :       } else {
#@                            :       }
#@                            :     }
#@                            :   }}
#@ (flow_step:report_start)  2:   apply {{} {
#@                            :     # Multi host/cpu attributes
#@                            :     #-----------------------------------------------------------------------------
#@                            :     # The FLOWTOOL_NUM_CPUS is an environment variable which should be exported by
#@                            :     # the specified dist script.  This connects the number of CPUs being reserved
#@                            :     # for batch jobs with the current flow scripts.  The LSB_MAX_NUM_PROCESSORS is
#@                            :     # a typical environment variable exported by distribution platforms and is
#@                            :     # useful for ensuring all interactive jobs are using the reserved amount of CPUs.
#@                            :     if {[info exists ::env(FLOWTOOL_NUM_CPUS)]} {
#@                            :       set max_cpus $::env(FLOWTOOL_NUM_CPUS)
#@                            :     } elseif {[info exists ::env(LSB_MAX_NUM_PROCESSORS)]} {
#@                            :       set max_cpus $::env(LSB_MAX_NUM_PROCESSORS)
#@                            :     } else {
#@                            :       set max_cpus 1
#@                            :     }
#@                            :     switch -glob [get_db program_short_name] {
#@                            :       default       {}
#@                            :       joules*       -
#@                            :       genus*        -
#@                            :       innovus*      -
#@                            :       tempus*       -
#@                            :       voltus*       { set_multi_cpu_usage -verbose -local_cpu $max_cpus }
#@                            :     }
#@                            : if {[get_feature opt_signoff]} {
#@                            :       if {[is_flow -inside flow:opt_signoff]} {
#@                            :         set_multi_cpu_usage -verbose -remote_host 1
#@                            :         set_multi_cpu_usage -verbose -cpu_per_remote_host 16
#@                            :         set_distributed_hosts -local
#@                            :       }
#@                            : }
#@                            :   }}
#@ (init_flow): cd /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design
#@ (init_flow): read_db /nethome/dkhalil8/InnovateECE/PhysicalDesign/RTL2GDS/design/dbs/syn_opt.cdb
