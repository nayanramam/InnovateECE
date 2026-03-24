# Minimum site dimensions: 0.46 units in X direction, 4.14 units in Y direction
set sitesx 0.46  ;# Set the site width (X dimension) to 0.46
set sitesy 4.14  ;# Set the site height (Y dimension) to 4.14

# Print a message indicating the start of the floorplan script
puts "RUNNING FLOORPLAN.TCL"

# Set the snapping of the floorplan to align with block grid instances
set_db floorplan_snap_block_grid inst

# Create the core area of the floorplan with dimensions based on site sizes
# Assuming we have approximately a 100x100 um box as the placeholder floorplan 
create_floorplan -core_size [expr {$sitesx*1950}] [expr {$sitesy*240}] 30 30 30 30

# Initialize core rows for placement within the floorplan
init_core_rows

# Retrieve and store the design's bounding box dimensions (dx and dy)
set dx [get_db designs .bbox.dx]  ;# Get the design's X dimension (width)
set dy [get_db designs .bbox.dy]  ;# Get the design's Y dimension (height)

# Macro Placement
place_inst InstructionFetch_Module_InstructionMemory_instr_sram 60 50 
place_inst MainMemory_data_sram 60 511 

# Macro Protection
create_route_blockage -inst InstructionFetch_Module_InstructionMemory_instr_sram -layers {met1 met2 met3 met4} -cover
create_route_blockage -inst MainMemory_data_sram -layers {met1 met2 met3 met4} -cover
create_place_blockage -all_macros

## Pipeline Stage Placement Guides
## create_guide -name requires the actual hierarchical instance name
## MEM at bottom, forward path flows bottom-to-top, WB+IF co-located at top

# MEM at bottom — closest to data SRAM interface
create_guide -name LoadStoreUnit             -area {743 50  867 360}

# ID + FWD in lower-middle
create_guide -name InstructionDecode_Module  -area {743 360 867 560}
create_guide -name ForwardController_Module  -area {743 360 867 560}

# EX in upper-middle — feeds alu_next_pc_addr to IF above
create_guide -name InstructionExecute_Module -area {743 560 867 760}

# IF + WB co-located at top — eliminates long wire on WB->EX->IF critical path
create_guide -name InstructionFetch_Module   -area {743 760 867 960}
create_guide -name WriteBack_Module          -area {743 760 867 960}

## Add Power Grid
# Source an external script to add a power grid to the design
source ./scripts/add_power.tcl

## Add Pins
# Source an external script to add pins to the design
source ./scripts/add_pins.tcl

# Align all elements in the floorplan to the nearest grid point
snap_floorplan -all

# Conditional block for optional macro placement and optimization (currently disabled)
if {0} {
  # Perform detailed macro placement
  place_macro_detail
  
  # Disable global placement of IO pins during optimization
  set_db place_global_place_io_pins false
  
  # Set a seed for global placement optimization
  set_db place_opt_run_global_place seed
  
  # Run placement optimization on the design
  place_opt_design
}

# Print a message indicating the end of the floorplan script
puts "ENDING FLOORPLAN.TCL"

