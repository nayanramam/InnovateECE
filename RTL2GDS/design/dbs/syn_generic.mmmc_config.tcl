##############################################################################
## LIBRARY SETS
##############################################################################
create_library_set \
  -name ff_v1.98_0C \
  -timing \
    [list \
      /nethome/dkhalil8/InnovateECE/RTL2GDS/SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ff_1.98_0_nldm.lib \
    ]

create_library_set \
  -name ss_v1.62_125C \
  -timing \
    [list \
      /nethome/dkhalil8/InnovateECE/RTL2GDS/SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_ss_1.62_125_nldm.lib \
    ]

create_library_set \
  -name tt_v1.8_25C \
  -timing \
    [list \
      /nethome/dkhalil8/InnovateECE/RTL2GDS/SiliconJackets/cadence_sky130/sky130_scl_9T_0.0.5/lib/sky130_tt_1.8_25_nldm.lib \
      /nethome/dkhalil8/InnovateECE/RTL2GDS/SiliconJackets/sram_sky130/lib/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib \
    ]


##############################################################################
## OPERATING CONDITIONS
##############################################################################

###############################################################################
### RC CORNERS
###############################################################################
create_rc_corner \
  -name Nominal_25C \
  -temperature 25 \
  -qrc_tech ../SiliconJackets/cadence_sky130/sky130_release_0.0.4/quantus/extraction/typical/qrcTechFile


##############################################################################
## TIMING CONDITIONS
##############################################################################
create_timing_condition \
  -name ff_v1.98_0C \
  -library_sets \
    [list \
        ff_v1.98_0C \
    ]

create_timing_condition \
  -name ss_v1.62_125C \
  -library_sets \
    [list \
        ss_v1.62_125C \
    ]

create_timing_condition \
  -name tt_v1.8_25C \
  -library_sets \
    [list \
        tt_v1.8_25C \
    ]


###############################################################################
### DELAY CORNERS
###############################################################################
create_delay_corner \
  -name tt_v1.8_25C_Nominal_25 \
  -rc_corner Nominal_25C \
  -timing_condition tt_v1.8_25C

create_delay_corner \
  -name ff_v1.98_0C_Nominal_25 \
  -rc_corner Nominal_25C \
  -timing_condition ff_v1.98_0C

create_delay_corner \
  -name ss_v1.62_125C_Nominal_25 \
  -rc_corner Nominal_25C \
  -timing_condition ss_v1.62_125C


###############################################################################
### CONSTRAINT MODES
###############################################################################
create_constraint_mode \
  -name func \
  -sdc_files \
    [list \
      /nethome/dkhalil8/InnovateECE/RTL2GDS/pipeline_src/base.sdc \
    ]


###############################################################################
### ANALYSIS VIEWS
###############################################################################
create_analysis_view \
  -name tt_v1.8_25C_Nominal_25_func \
  -constraint_mode func \
  -delay_corner tt_v1.8_25C_Nominal_25

set_analysis_view \
  -setup   [list tt_v1.8_25C_Nominal_25_func] \
  -hold    [list tt_v1.8_25C_Nominal_25_func] \
  -leakage [list tt_v1.8_25C_Nominal_25_func] \
  -dynamic [list tt_v1.8_25C_Nominal_25_func]

