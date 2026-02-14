#################################################################################
#
# Created by Genus(TM) Synthesis Solution 25.11-s095_1 on Tue Oct 07 16:56:53 EDT 2025
#
#################################################################################

## library_sets
create_library_set -name ff_v1.98_0C \
    -timing { /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ff_1.98_0_nldm.lib }
create_library_set -name ss_v1.62_125C \
    -timing { /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ss_1.62_125_nldm.lib }
create_library_set -name tt_v1.8_25C \
    -timing { /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_tt_1.8_25_nldm.lib \
              /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/SiliconJackets/sram_sky130/lib/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib }

## timing_condition
create_timing_condition -name ff_v1.98_0C \
    -library_sets { ff_v1.98_0C }
create_timing_condition -name ss_v1.62_125C \
    -library_sets { ss_v1.62_125C }
create_timing_condition -name tt_v1.8_25C \
    -library_sets { tt_v1.8_25C }

## rc_corner
create_rc_corner -name Nominal_25C \
    -temperature 25.0 \
    -qrc_tech /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/design/../SiliconJackets/cadence_sky130/sky130_release_0.0.4/quantus/extraction/typical/qrcTechFile \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name tt_v1.8_25C_Nominal_25 \
    -early_timing_condition { tt_v1.8_25C } \
    -late_timing_condition { tt_v1.8_25C } \
    -early_rc_corner Nominal_25C \
    -late_rc_corner Nominal_25C
create_delay_corner -name ff_v1.98_0C_Nominal_25 \
    -early_timing_condition { ff_v1.98_0C } \
    -late_timing_condition { ff_v1.98_0C } \
    -early_rc_corner Nominal_25C \
    -late_rc_corner Nominal_25C
create_delay_corner -name ss_v1.62_125C_Nominal_25 \
    -early_timing_condition { ss_v1.62_125C } \
    -late_timing_condition { ss_v1.62_125C } \
    -early_rc_corner Nominal_25C \
    -late_rc_corner Nominal_25C

## constraint_mode
create_constraint_mode -name func \
    -sdc_files { /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/design/dbs/syn_opt.cdb/cmn/top_lvl.mmmc/modes/func/func.sdc.gz }

## analysis_view
create_analysis_view -name tt_v1.8_25C_Nominal_25_func \
    -constraint_mode func \
    -delay_corner tt_v1.8_25C_Nominal_25 \
    -latency_file /nethome/dkhalil8/Physical-Design-Onboarding/RTL2GDS/design/dbs/syn_opt.cdb/cmn/top_lvl.mmmc/views/tt_v1.8_25C_Nominal_25_func/latency.sdc.gz

## set_analysis_view
set_analysis_view -setup { tt_v1.8_25C_Nominal_25_func } \
                  -hold { tt_v1.8_25C_Nominal_25_func } \
                  -leakage tt_v1.8_25C_Nominal_25_func \
                  -dynamic tt_v1.8_25C_Nominal_25_func
