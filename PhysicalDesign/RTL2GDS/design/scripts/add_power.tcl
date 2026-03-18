connect_global_net VDD -type pg_pin -pin_base_name vccd1
connect_global_net VSS -type pg_pin -pin_base_name vssd1
connect_global_net VDD -type pg_pin -pin_base_name VDD
connect_global_net VSS -type pg_pin -pin_base_name VSS

connect_global_net VDD -type tie_hi -all
connect_global_net VSS -type tie_lo -all

# connect SRAM power to Chip power
set mem_blocks [get_db [get_db insts *sram*] .name]
foreach i $mem_blocks {
    puts $i
    connect_global_net VDD -type pgpin -pin vccd1 -sinst $i -override
    connect_global_net VSS -type pgpin -pin vssd1 -sinst $i -override
}
# Core ring
add_rings -nets {VDD VSS} -layer {top met5 bottom met5 left met4 right met4} -width {top 4.8 bottom 4.8 left 4.8 right 4.8} -spacing {top 4.8 bottom 4.8 left 4.8 right 4.8} -offset {top 2 bottom 2 left 2 right 2} -center 0 -threshold 0.4 -jog_distance 0.4 -snap_wire_center_to_grid none

# Macro rings around SRAMs
# offset 0 on top/bottom so ring inner edge is flush with SRAM boundary,
# allowing cut met4 vertical stripe ends to connect directly to the ring
add_rings -nets {VDD VSS} \
    -around each_block \
    -layer {top met4 bottom met4 left met4 right met4} \
    -width 2 -spacing 2 -offset {top 0 bottom 0 left 1 right 1}

# Power stripes
add_stripes -nets {VDD VSS} -layer met5 -direction horizontal -width 3 -spacing 20 -set_to_set_distance 50 -start_from bottom -start_offset 5 -switch_layer_over_obs false -max_same_layer_jog_length 2 -pad_core_ring_top_layer_limit met5 -pad_core_ring_bottom_layer_limit met1 -block_ring_top_layer_limit met5 -block_ring_bottom_layer_limit met4 -use_wire_group 0 -snap_wire_center_to_grid none

add_stripes -nets {VDD VSS} -layer met4 -direction vertical -width 3 -spacing 20 -set_to_set_distance 50 -start_from left -start_offset 5 -switch_layer_over_obs false -max_same_layer_jog_length 2 -pad_core_ring_top_layer_limit met5 -pad_core_ring_bottom_layer_limit met1 -block_ring_top_layer_limit met5 -block_ring_bottom_layer_limit met4 -use_wire_group 0 -snap_wire_center_to_grid none

# Dedicated met4 vertical stripe pair at SRAM right boundary (~X=713)
# The global met4 stripes land at X=685 (blocked by SRAM) and X=735 (22um away).
# This pair sits just outside the SRAM right edge so route_special can build
# a via stack from the met1 row-end stubs up to met4 instead of leaving them dangling.
add_stripes -nets {VDD VSS} \
    -layer met4 \
    -direction vertical \
    -width 3 \
    -spacing 2 \
    -area {714 30 745 1024} \
    -pad_core_ring_top_layer_limit met5 \
    -pad_core_ring_bottom_layer_limit met1 \
    -snap_wire_center_to_grid none

# Connect standard cell and macro power pins to grid
route_special \
    -connect { core_pin block_pin } \
    -block_pin_target { nearest_target } \
    -core_pin_target { first_after_row_end } \
    -core_pin_layer { met1 } \
    -block_pin_layer_range { met3 met4 } \
    -delete_existing_routes \
    -nets { VDD VSS }


#delete_route_halos -all_blocks