// Golden model for the dot product accelerator
module acc_core_golden(
    input logic clk,
    input logic rst_n,
    input logic acc_clear,

    input logic valid_i,
    input logic [3:0] idx_i,
    input logic [7:0] x_i,
    input logic [7:0] w_i,

    output logic ready_o,
    output logic acc_busy,

    output logic sat_o,
    output logic err_o,

    output logic [9:0] acc_result
);