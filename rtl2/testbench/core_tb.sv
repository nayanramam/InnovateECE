//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
//***********************************************************
// ECE 3058 Architecture Concurrency and Energy in Computation
//
// RISCV Processor System Verilog Behavioral Model
//
// School of Electrical & Computer Engineering
// Georgia Institute of Technology
// Atlanta, GA 30332
//
//  Engineer:   Zou, Ivan
//  Module:     core_tb
//  Functionality:
//      This is the testbed for the 5 Stage Pipeline RISCV processor
//
//***********************************************************
`timescale 1ns / 1ns

module Core_tb;

// Clock and Reset signals to simulate as input into core
	logic clk = 1;
	logic mem_enable;
	logic reset;

	// local variables to display for testbench
	logic[6:0] cycle_count;
	
	integer i;
	initial
	begin
		cycle_count = 0;

		// do the simulation
		$dumpfile("Core_Simulation.vcd");

		// dump all the signals into the vcd waveforem file
		$dumpvars(0, Core_tb);

		reset = 1'b1;
		mem_enable = 1'b1;

		// Set the Test instructions and preset MEM and Regfile here if desired

		// Start Testbench Test Instructions. First instruction should always be a NOP

		#1 


// 0x00000000
// 0x00000000
// 0x00000000
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x00210133 //add x2, x2, x2
// 0x01080833 //add x16, x16, x16
// 0x00000000
// 0x01080833 //add x16, x16, x16
// 0x00000000
// 0x01080833 //add x16, x16, x16
// 0x00000000
// 0x00000000
// 0x01080833 //add x16, x16, x16
// 0x41010733 //sub x14, x2, x16
// 0x41070633 //sub x12, x14, x16
// 0x00000000
// 0x41070633 //sub x12, x14, x16
// 0x410604b3 //sub x9, x12, x16
// 0x002481b3 //add x3, x9, x2
// 0x00002483 //lw x9, 0(x0)
// 0x00348233 //add x4, x9, x3
// 0x40348233 //sub x4, x9, x3
// 0xfec10113 //addi x2, x2, -20
// 0x00402083 //lw x1, 4(x0)
    // 0x00000000 - First
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[0] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[1] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[2] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[3] = 8'h00;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[4] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[5] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[6] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[7] = 8'h00;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[8] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[9] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[10] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[11] = 8'h00;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[12] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[13] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[14] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[15] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[16] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[17] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[18] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[19] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[20] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[21] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[22] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[23] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[24] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[25] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[26] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[27] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[28] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[29] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[30] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[31] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[32] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[33] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[34] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[35] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[36] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[37] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[38] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[39] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[40] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[41] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[42] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[43] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[44] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[45] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[46] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[47] = 8'h33;

    // 0x00210133
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[48] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[49] = 8'h21;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[50] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[51] = 8'h33;

    // 0x01080833
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[52] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[53] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[54] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[55] = 8'h33;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[56] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[57] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[58] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[59] = 8'h00;

    // 0x01080833
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[60] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[61] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[62] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[63] = 8'h33;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[64] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[65] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[66] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[67] = 8'h00;

    // 0x01080833
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[68] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[69] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[70] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[71] = 8'h33;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[72] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[73] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[74] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[75] = 8'h00;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[76] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[77] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[78] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[79] = 8'h00;

    // 0x01080833
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[80] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[81] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[82] = 8'h08;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[83] = 8'h33;

    // 0x41010733
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[84] = 8'h41;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[85] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[86] = 8'h07;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[87] = 8'h33;

    // 0x41070633
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[88] = 8'h41;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[89] = 8'h07;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[90] = 8'h06;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[91] = 8'h33;

    // 0x00000000
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[92] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[93] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[94] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[95] = 8'h00;

    // 0x41070633
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[96] = 8'h41;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[97] = 8'h07;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[98] = 8'h06;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[99] = 8'h33;

    // 0x410604b3
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[100] = 8'h41;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[101] = 8'h06;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[102] = 8'h04;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[103] = 8'hb3;

    // 0x002481b3
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[104] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[105] = 8'h24;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[106] = 8'h81;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[107] = 8'hb3;

    // 0x00002483
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[108] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[109] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[110] = 8'h24;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[111] = 8'h83;

    // 0x00348233
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[112] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[113] = 8'h34;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[114] = 8'h82;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[115] = 8'h33;

    // 0x40348233
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[116] = 8'h40;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[117] = 8'h34;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[118] = 8'h82;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[119] = 8'h33;

    // 0xfec10113
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[120] = 8'hfe;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[121] = 8'hc1;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[122] = 8'h01;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[123] = 8'h13;

    // 0x00402083
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[124] = 8'h00;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[125] = 8'h40;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[126] = 8'h20;
    core_proc.InstructionFetch_Module.InstructionMemory.instr_RAM[127] = 8'h83;

		#6 reset = 1'b0;

		#50 $finish;
	end

	always
		#1 clk <= clk + 1;

	always @(posedge clk) begin
		if (~reset)
			cycle_count <= cycle_count + 1;
	end

	Core core_proc(
		// Inputs
		.clock(clk),
		.reset(reset),
		.mem_en(mem_enable)
	);

endmodule
////***********************************************************
//// ECE 3058: Architecture, Concurrency, and Energy in Computation
////
//// RISC-V Processor SystemVerilog Behavioral Model
////
//// School of Electrical & Computer Engineering
//// Georgia Institute of Technology
//// Atlanta, GA 30332
////
////  Engineer:   Crombie, Ian; Cochran, Jack
////  Module:     core_tb
////  Functionality:
////      This is the testbench for a 5 stage pipelined RISC-V processor
////
////***********************************************************
//`timescale 1ns / 1ns
//
//module Core_tb;
//
//  // clock and reset signals
//  logic clk = 1;
//  logic reset;
//
//  // Loop variable for loading instructions
//  integer i;
//
//
//
//  // https://www.cs.sfu.ca/%7Eashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
//  // https://luplab.gitlab.io/rvcodecjs/
//  // http://www.eg.bucknell.edu/~csci206/riscv-converter/
//
//
//  // Use the links above to add RISC-V instructions to the provided array in hex format.
//  // Remember, these resources are may be incorrect for some instruction types, so make sure to verify them with your RISC-V greencard
//  bit [31:0] test_instructions [] = {
//        32'h00000000, // NOP (keep as first instruction for simulation to work)
//        32'h05028293, // addi x5, x5, 80
//		32'h01428213, // addi x4, x5, 20
//		32'h00428533, // add x10, x5, x4
//		32'h40428633  // sub x12, x5, x4
//    };
//
//
//
//  
//  initial
//  begin
//    // dump waveform signals into a vcd waveform file
//    $dumpfile("Core_Simulation.vcd");
//    $dumpvars(0, Core_tb);
//	
//	reset = 1'b1;
//	
//	#1
//    // Loop over the array of instructions
//    for (i = 0; i < $size(test_instructions); i++)
//    begin
//	
//	  // Now load each byte in to memory manually
//      rv32_core.InstructionFetch_Module.InstructionMemory.instr_RAM[i * 4 + 0] = test_instructions[i][31:24];
//      rv32_core.InstructionFetch_Module.InstructionMemory.instr_RAM[i * 4 + 1] = test_instructions[i][23:16];
//      rv32_core.InstructionFetch_Module.InstructionMemory.instr_RAM[i * 4 + 2] = test_instructions[i][15:8];
//      rv32_core.InstructionFetch_Module.InstructionMemory.instr_RAM[i * 4 + 3] = test_instructions[i][7:0];
//    end
//	
//	#3 reset = 1'b0;
//	
//	
//    // end simulation after (# of instructions * 4ns(clk period))
//    #($size(test_instructions) * 4) $finish;
//  end
//
//
//always
//	#2 clk <= ~clk;
//
//
//
//  // instantiate the RISC-V core
//  Core rv32_core (
//         .clock(clk),
//         .reset(reset),
//         .mem_en(1'b1)
//       );
//
//endmodule
//