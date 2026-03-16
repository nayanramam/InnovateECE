import CORE_PKG::*;

module loadstore_unit (
    input logic     clk,
    input logic     rst_n,
    input logic     en_lsu,

    input load_store_func_code lsu_operator_op, // which LSU instruction to do 
    input  logic [31:0] alu_result, // memory address

    // Store instruction (info to store)
    input  logic [31:0] regfile_b_out,   // data to write to memory, coming in from decode/execute
    output logic [31:0] mem_wdata,  // same data to write to memory, just repackaged for the output
    output logic mem_wen, // a bit that goes high when we're trying to write to memory (store instruction)

    output logic [3:0] mem_be, // a register that specifies which byte to write to (for store byte only?)

    output logic [31:0] mem_addr, // address sent to memory to retrieve the actual (data) input to LSU 
    input logic [31:0] input_data, // data coming back from the memory (for load instructions)

    // To writeback, for load instructions (figure out specifics later)
    output logic [31:0] writeback_output;
);

    logic [31:0] instruction; // internal register for storing the instruction

    // ======================= Instruction decode section START =======================
    // The assignment operations are wires outside of the flip-flop section to ensure continuous updates
    // FIGURE OUT IF THE ALU ADDITION INSTRUCTIONS ARE SENT FROM HERE OR FROM DECODE ITSELF
    wire [6:0] opcode = instruction[6:0];
    wire [2:0] funct3 = instruction[14:12];
    wire [4:0] rs1 = instruction[19:15];

    // I-type instructions
    wire [11:0] i_imm = instruction[31:20];
    wire [4:0] i_rd = instruction[11:7];

    // S-type instructions
    wire [4:0] s_rs2 = instruction[24:20];
    wire [11:0] s_imm = {instruction[31:25], instruction[11:7]};

    // U-type instructions
    wire [4:0] u_rd = instruction[11:7];
    wire [20:0] u_imm = instruction[31:12];

    // ======================= Instruction decode section END =======================

    always_comb begin 
        mem_wen = 1'b0;
        mem_be = 4'b1111;
        writeback_output = 32'b0;
        mem_addr = alu_result;
        mem_wdata = 32'b0; 

        if(en_lsu) begin
            case(lsu_operator_op)
                LW: begin // Load word
                    writeback_output = input_data;
                end
                LB: begin // Load byte
                    writeback_output = {{24{input_data[7]}}, input_data[7:0]};
                end
                SW: begin // Store word
                    mem_wen = 1'b1;
                    mem_wdata = regfile_b_out;
                end
                SB: begin // Store byte
                    mem_wen = 1'b1;
                    mem_be = 4'b0011;
                    case(alu_result[1:0]) 
                        2'b00: mem_wdata = {24'b0, mem_wdata[7:0]};
                        2'b01: mem_wdata = {16'b0, mem_wdata[7:0], 8'b0};
                        2'b10: mem_wdata = {8'b0, mem_wdata[7:0], 16'b0};
                        2'b11: mem_wdata = {mem_wdata[7:0], 24'b0};
                    endcase
                end
            endcase
        end
    end
endmodule
    