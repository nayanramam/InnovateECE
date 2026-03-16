################################################################################
#       Setting dont_touch and dont_use preserve setting
################################################################################
catch {set_db base_cell:ICGX1 .dont_use true}
catch {set_db base_cell:sky130_sram_2kbyte_1rw1r_32x512_8 .dont_use true}
catch {set_db base_cell:ICGX1 .dont_touch true}
catch {set_db base_cell:sky130_sram_2kbyte_1rw1r_32x512_8 .dont_touch true}
