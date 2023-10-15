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

// SystemVerilog created from arbiter_iord_s2
// Created for function/kernel SDF_ABC_ACTOR10
// SystemVerilog created on Mon Oct 16 02:43:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR10_arbiter_iord_s2 (
    input wire [0:0] in_almost_full_in0,
    input wire [0:0] in_almost_full_in1,
    input wire [0:0] in_almost_full_in2,
    input wire [0:0] in_almost_full_in3,
    input wire [31:0] in_i_fifodata,
    input wire [0:0] in_i_fifovalid,
    input wire [0:0] in_ready_in0,
    input wire [0:0] in_ready_in1,
    input wire [0:0] in_ready_in2,
    input wire [0:0] in_ready_in3,
    output wire [31:0] out_data_out0,
    output wire [31:0] out_data_out1,
    output wire [31:0] out_data_out2,
    output wire [31:0] out_data_out3,
    output wire [0:0] out_o_fifoalmost_full,
    output wire [0:0] out_o_fifoready,
    output wire [0:0] out_valid_out0,
    output wire [0:0] out_valid_out1,
    output wire [0:0] out_valid_out2,
    output wire [0:0] out_valid_out3,
    input wire clock,
    input wire resetn
    );

    wire [0:0] almost_full_or_q;
    wire [0:0] ready_or_q;


    // out_data_out0(GPOUT,13)
    assign out_data_out0 = in_i_fifodata;

    // out_data_out1(GPOUT,14)
    assign out_data_out1 = in_i_fifodata;

    // out_data_out2(GPOUT,15)
    assign out_data_out2 = in_i_fifodata;

    // out_data_out3(GPOUT,16)
    assign out_data_out3 = in_i_fifodata;

    // almost_full_or(LOGICAL,2)
    assign almost_full_or_q = in_almost_full_in0 | in_almost_full_in1 | in_almost_full_in2 | in_almost_full_in3;

    // out_o_fifoalmost_full(GPOUT,17)
    assign out_o_fifoalmost_full = almost_full_or_q;

    // ready_or(LOGICAL,23)
    assign ready_or_q = in_ready_in0 | in_ready_in1 | in_ready_in2 | in_ready_in3;

    // out_o_fifoready(GPOUT,18)
    assign out_o_fifoready = ready_or_q;

    // out_valid_out0(GPOUT,19)
    assign out_valid_out0 = in_i_fifovalid;

    // out_valid_out1(GPOUT,20)
    assign out_valid_out1 = in_i_fifovalid;

    // out_valid_out2(GPOUT,21)
    assign out_valid_out2 = in_i_fifovalid;

    // out_valid_out3(GPOUT,22)
    assign out_valid_out3 = in_i_fifovalid;

endmodule
