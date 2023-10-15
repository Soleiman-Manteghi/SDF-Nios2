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

// SystemVerilog created from arbiter_iord_s1
// Created for function/kernel SDF_ABC_ACTOR
// SystemVerilog created on Mon Oct 16 02:22:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR_arbiter_iord_s1 (
    input wire [0:0] in_almost_full_in0,
    input wire [0:0] in_almost_full_in1,
    input wire [31:0] in_i_fifodata,
    input wire [0:0] in_i_fifovalid,
    input wire [0:0] in_ready_in0,
    input wire [0:0] in_ready_in1,
    output wire [31:0] out_data_out0,
    output wire [31:0] out_data_out1,
    output wire [0:0] out_o_fifoalmost_full,
    output wire [0:0] out_o_fifoready,
    output wire [0:0] out_valid_out0,
    output wire [0:0] out_valid_out1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] almost_full_or_q;
    wire [0:0] ready_or_q;


    // out_data_out0(GPOUT,9)
    assign out_data_out0 = in_i_fifodata;

    // out_data_out1(GPOUT,10)
    assign out_data_out1 = in_i_fifodata;

    // almost_full_or(LOGICAL,2)
    assign almost_full_or_q = in_almost_full_in0 | in_almost_full_in1;

    // out_o_fifoalmost_full(GPOUT,11)
    assign out_o_fifoalmost_full = almost_full_or_q;

    // ready_or(LOGICAL,15)
    assign ready_or_q = in_ready_in0 | in_ready_in1;

    // out_o_fifoready(GPOUT,12)
    assign out_o_fifoready = ready_or_q;

    // out_valid_out0(GPOUT,13)
    assign out_valid_out0 = in_i_fifovalid;

    // out_valid_out1(GPOUT,14)
    assign out_valid_out1 = in_i_fifovalid;

endmodule
