// ECE 3058 Architecture Concurrency and Energy in Computation
//
// RISCV Processor System Verilog Behavioral Model
//
// School of Electrical & Computer Engineering
// Georgia Institute of Technology
// Atlanta, GA 30332
//
//  Module:     DRAM
//  Functionality:
//      Data Memory of a 5 Stage RISCV Processor
//      SRAM macro wrapper using sky130_sram_2kbyte_1rw1r_32x512_8
//
//***********************************************************

import CORE_PKG::*;

module DRAM (
  // General Inputs
  input  logic                clock,
  input  logic                mem_en,

  // Inputs from LSU
  input  logic                data_req_ip,        // Validity of data addr sent from LSU

  // Input from ALU
  input  logic [31:0]         data_addr_ip,       // Address calculated from MEM for memory access

  // Inputs from Decode
  input  logic [31:0]         wdata_ip,           // Data to store into memory (store instructions)
  input  load_store_func_code lsu_operator,

  // Module Outputs
  output logic                mem_gnt_op,         // DRAM ready signal sent to Fetch Unit

  // Outputs to Decode
  output logic [31:0]         load_data_op        // Data to send to LSU for a load instruction
);

  logic       is_store, is_load;
  logic [3:0] wmask;
  logic [8:0] word_addr;

  // Classify operation
  assign is_store = data_req_ip & (lsu_operator == SW  | lsu_operator == SH  | lsu_operator == SB);
  assign is_load  = data_req_ip & (lsu_operator == LW  | lsu_operator == LH  | lsu_operator == LB |
                                   lsu_operator == LHU | lsu_operator == LBU);

  // Convert byte address to 9-bit word address (32-bit words)
  assign word_addr  = data_addr_ip[10:2];

  // Memory ready signal
  assign mem_gnt_op = mem_en;

  // Byte-write mask based on operation type and address alignment
  always_comb begin
    case (lsu_operator)
      SW:      wmask = 4'b1111;
      SH:      wmask = data_addr_ip[1] ? 4'b1100 : 4'b0011;
      SB:      wmask = 4'b0001 << data_addr_ip[1:0];
      default: wmask = 4'b0000;
    endcase
  end

  sky130_sram_2kbyte_1rw1r_32x512_8 data_sram (
    // Port 0: store (write) path
    .clk0  (clock),
    .csb0  (~is_store),
    .web0  (~is_store),
    .wmask0(wmask),
    .addr0 (word_addr),
    .din0  (wdata_ip),
    .dout0 (),
    // Port 1: load (read) path
    .clk1  (clock),
    .csb1  (~is_load),
    .addr1 (word_addr),
    .dout1 (load_data_op)
  );

endmodule
