if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name ff_v1.98_0C\
   -timing\
    [list ${::IMEX::libVar}/mmmc/sky130_ff_1.98_0_nldm.lib]
create_library_set -name tt_v1.8_25C\
   -timing\
    [list ${::IMEX::libVar}/mmmc/sky130_tt_1.8_25_nldm.lib\
    ${::IMEX::libVar}/mmmc/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib]
create_library_set -name ss_v1.62_125C\
   -timing\
    [list ${::IMEX::libVar}/mmmc/sky130_ss_1.62_125_nldm.lib]
create_timing_condition -name ff_v1.98_0C\
   -library_sets [list ff_v1.98_0C]
create_timing_condition -name tt_v1.8_25C\
   -library_sets [list tt_v1.8_25C]
create_timing_condition -name ss_v1.62_125C\
   -library_sets [list ss_v1.62_125C]
create_rc_corner -name Nominal_25C\
   -pre_route_res 1\
   -post_route_res {1 1 1}\
   -pre_route_cap 1\
   -post_route_cap {1 1 1}\
   -post_route_cross_cap {1 1 1}\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -post_route_clock_cap {1 1 1}\
   -post_route_clock_res {1 1 1}\
   -post_route_clock_cross_cap {1 1 1}\
   -temperature 25\
   -qrc_tech ${::IMEX::libVar}/mmmc/Nominal_25C/qrcTechFile
create_delay_corner -name ff_v1.98_0C_Nominal_25\
   -early_timing_condition {ff_v1.98_0C}\
   -late_timing_condition {ff_v1.98_0C}\
   -rc_corner Nominal_25C
create_delay_corner -name tt_v1.8_25C_Nominal_25\
   -early_timing_condition {tt_v1.8_25C}\
   -late_timing_condition {tt_v1.8_25C}\
   -rc_corner Nominal_25C
create_delay_corner -name ss_v1.62_125C_Nominal_25\
   -early_timing_condition {ss_v1.62_125C}\
   -late_timing_condition {ss_v1.62_125C}\
   -rc_corner Nominal_25C
create_constraint_mode -name func\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/func/func.sdc.gz]
create_analysis_view -name tt_v1.8_25C_Nominal_25_func -constraint_mode func -delay_corner tt_v1.8_25C_Nominal_25 -latency_file ${::IMEX::dataVar}/mmmc/views/tt_v1.8_25C_Nominal_25_func/latency.sdc.gz
set_analysis_view -setup [list tt_v1.8_25C_Nominal_25_func] -hold [list tt_v1.8_25C_Nominal_25_func] -leakage tt_v1.8_25C_Nominal_25_func -dynamic tt_v1.8_25C_Nominal_25_func
