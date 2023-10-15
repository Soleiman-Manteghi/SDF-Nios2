// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from arbiter_iowr_s2
// Created for function/kernel SDF_ABC_ACTOR
// SystemVerilog created on Mon Oct 16 02:22:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR_arbiter_iowr_s2 (
    input wire [31:0] in_data_in0,
    input wire [31:0] in_data_in1,
    input wire [31:0] in_data_in2,
    input wire [31:0] in_data_in3,
    input wire [31:0] in_data_in4,
    input wire [31:0] in_data_in5,
    input wire [0:0] in_i_fifoready,
    input wire [0:0] in_valid_in0,
    input wire [0:0] in_valid_in1,
    input wire [0:0] in_valid_in2,
    input wire [0:0] in_valid_in3,
    input wire [0:0] in_valid_in4,
    input wire [0:0] in_valid_in5,
    output wire [31:0] out_o_fifodata,
    output wire [0:0] out_o_fifovalid,
    output wire [0:0] out_ready_out0,
    output wire [0:0] out_ready_out1,
    output wire [0:0] out_ready_out2,
    output wire [0:0] out_ready_out3,
    output wire [0:0] out_ready_out4,
    output wire [0:0] out_ready_out5,
    input wire clock,
    input wire resetn
    );

    reg [31:0] data_in_q;
    reg [0:0] data_in_v;
    wire [31:0] default_input_data_q;


    // default_input_data(CONSTANT,3)
    assign default_input_data_q = $unsigned(32'b00000000000000000000000000000000);

    // data_in(SELECTOR,2)@0
    always @(in_valid_in0 or in_data_in0 or in_valid_in1 or in_data_in1 or in_valid_in2 or in_data_in2 or in_valid_in3 or in_data_in3 or in_valid_in4 or in_data_in4 or in_valid_in5 or in_data_in5 or default_input_data_q)
    begin
        data_in_q = default_input_data_q;
        data_in_v = $unsigned(1'b0);
        if (in_valid_in5 == 1'b1)
        begin
            data_in_q = in_data_in5;
            data_in_v = $unsigned(1'b1);
        end
        if (in_valid_in4 == 1'b1)
        begin
            data_in_q = in_data_in4;
            data_in_v = $unsigned(1'b1);
        end
        if (in_valid_in3 == 1'b1)
        begin
            data_in_q = in_data_in3;
            data_in_v = $unsigned(1'b1);
        end
        if (in_valid_in2 == 1'b1)
        begin
            data_in_q = in_data_in2;
            data_in_v = $unsigned(1'b1);
        end
        if (in_valid_in1 == 1'b1)
        begin
            data_in_q = in_data_in1;
            data_in_v = $unsigned(1'b1);
        end
        if (in_valid_in0 == 1'b1)
        begin
            data_in_q = in_data_in0;
            data_in_v = $unsigned(1'b1);
        end
    end

    // out_o_fifodata(GPOUT,17)@0
    assign out_o_fifodata = data_in_q;

    // out_o_fifovalid(GPOUT,18)@0
    assign out_o_fifovalid = data_in_v;

    // out_ready_out0(GPOUT,19)@0
    assign out_ready_out0 = in_i_fifoready;

    // out_ready_out1(GPOUT,20)@0
    assign out_ready_out1 = in_i_fifoready;

    // out_ready_out2(GPOUT,21)@0
    assign out_ready_out2 = in_i_fifoready;

    // out_ready_out3(GPOUT,22)@0
    assign out_ready_out3 = in_i_fifoready;

    // out_ready_out4(GPOUT,23)@0
    assign out_ready_out4 = in_i_fifoready;

    // out_ready_out5(GPOUT,24)@0
    assign out_ready_out5 = in_i_fifoready;

endmodule
