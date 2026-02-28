module loadstore_unit (
    input logic     clk,
    input logic     rst_n,
    input logic     en_lsu,

    input logic [3:0] lsu_operator,
    input  logic [31:0] alu_result, // memory address

    // Store instruction (info to store)
    input  logic [31:0] regfile_b_out,   // data to write to memory, coming in from decode/execute
    output logic [31:0] mem_wdata,  // same data to write to memory, just repackaged for the output
    output logic mem_wen, // a bit that goes high when we're trying to write to memory (store instruction)

    output logic [3:0] mem_be, // a register that specifies which byte to write to for store byte 

    output logic [31:0] mem_addr, // address sent to memory to retrieve the actual (data) input to LSU 
    input logic [31:0] input_data, // data coming back from the memory 

    // To writeback, for load instructions (figure out specifics later)
    out logic [31:0] writeback_shit;
);


    typedef enum logic [2:0] {
        FETCH,
        EXECUTE,
        MEMORY, 
        STAGE // add mroe STAGES later
    } state_t;
    state_t state;

    logic [31:0] instruction; // internal register for storing the instruction
    logic [31:0] pc;

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

    // ======================= Instruction decode section END =======================

    always_comb begin 
        mem_wen = 1'b0;
        mem_be = 4'b0000;
        writeback_shit = 32'b0;

        if(en_lsu) begin
            case(lsu_operator)
                LW: 
                SW:
                LB:
                SB

            endcase
        end


    end
endmodule
    