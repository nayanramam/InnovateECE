// Golden model for the dot product accelerator
module mac_golden(
    input logic clk,
    input logic rst_n,

    // CPU INPUTS TO GOLDEN
    input logic dac_enable,      // DAC enable signal
    input logic [3:0] op_pair_addr,    // address for demux, determined by the instruction (DOT0, DOT1, etc)
    // NOTE: instead of data_valid_i, just checking for op_pair_addr = 15 (i.e. executing DOT15)


    input logic [7:0] x_i,
    input logic [7:0] w_i,

    // WRAPPER OUTPUTS TO CPU
    output logic [9:0] result_o, // calibrated result that is sent to CPU during DOT15 instruction execute stage
    output logic ready_o        // written by this block, indicates that calibration is done and output is ready to be read by CPU
);

// logic [15:0] prod_xw;
logic [18:0] acc_result;

always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        result_o <= 0;
    end else begin
        if (dac_enable) begin
            acc_result <= acc_result + (signed'(x_i) * signed'(w_i));
        end
    end
end

always_comb begin
    if (op_pair_addr == 4'b1111) begin
        result_o <= acc_result;
    end else begin
        result_o <= 0;
    end
end