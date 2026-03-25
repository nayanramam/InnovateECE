/* Verilog interfacing for the MAC block
   Drives inputs to MAC, writes to dedicated SRAM, manages control signals,
   handles output scaling and calibration
*/


module mac_wrapper(
    input logic clk,
    input logic rst_n,

    // CPU INPUTS TO ANALOG
    input logic dac_enable,      // DAC enable signal
    input logic op_pair_addr,    // address for demux, determined by the instruction (DOT0, DOT1, etc)

    // ANALOG INPUTS TO WRAPPER
    //TODO: not sure if a handshake is possible here (how would i detect that calculation is done in the analog block?),
    //      might have to just wait a set number of cycles then say its done
    input logic done_calc,   // MAC writes when calculatiton is done
    input logic [9:0] result_acc, // result from MAC block
    input logic adc_full_ran,           // 1 if ADC samples full range, 0 if 2^10  

    // WRAPPER OUTPUTS TO CPU
    output logic [9:0] result_o, // calibrated result that is sent to CPU during DOT15 instruction execute stage
    output logic ready_o, // written by this block, indicates that calibration is done and output is ready to be read by CPU

    // WRAPPER OUTPUTS TO ANALOG
    output logic start_calc,   // Likely just delayed data_valid_i, sends values in buffers to MAC
);

parameter CAL_WEIGHT
parameter CAL_BIAS

always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        result_sram <= 0;
    end else begin
        if (done_calc) begin
            result_o <= (result_acc * CAL_WEIGHT) + CAL_BIAS
        end
    end
end



endmodule