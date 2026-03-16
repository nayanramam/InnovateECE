// ECE 3058 Architecture Concurrency and Energy in Computation
//
// RISCV Processor System Verilog Behavioral Model
//
// School of Electrical & Computer Engineering
// Georgia Institute of Technology
// Atlanta, GA 30332
//
//  Module:     Instr_Mem
//  Functionality:
//      Instruction Memory for a 5 Stage RISCV Processor
//      SRAM macro wrapper using sky130_sram_2kbyte_1rw1r_32x512_8
//
//***********************************************************

import CORE_PKG::*;

module Instr_Mem (
  // General Inputs
  input  logic        clock,
  input  logic        mem_en,

  // Inputs from PC
  input  logic        instr_req_ip,           // Validity of instr. addr sent from Fetch
  input  logic [31:0] instr_addr_ip,          // Byte address in memory holding desired instruction

  // Outputs to Decode
  output logic        instr_valid_op,         // Validity of the fetched instr. data output
  output logic [31:0] instr_data_op           // Read instruction sent to decode
);

  // Convert byte address to 9-bit word address (32-bit words)
  logic [8:0] word_addr;
  assign word_addr = instr_addr_ip[10:2];

  // Register valid signal to match SRAM 1-cycle read latency
  always_ff @(posedge clock)
    instr_valid_op <= (mem_en & instr_req_ip);

  sky130_sram_2kbyte_1rw1r_32x512_8 instr_sram (
    // Port 0: tied off (instruction memory is read-only from CPU)
    .clk0  (clock),
    .csb0  (1'b1),
    .web0  (1'b1),
    .wmask0(4'h0),
    .addr0 (9'h0),
    .din0  (32'h0),
    .dout0 (),
    // Port 1: instruction fetch reads
    .clk1  (clock),
    .csb1  (~(mem_en & instr_req_ip)),
    .addr1 (word_addr),
    .dout1 (instr_data_op)
  );

endmodule
