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

// SystemVerilog created from ihc_1_function
// Created for function/kernel SDF_ABC_ACTOR
// SystemVerilog created on Mon Oct 16 02:22:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR_ihc_1_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_s2_global,
    input wire [63:0] in_arg_s3_global,
    input wire [0:0] in_iord_bl_call_ihc_1_i_fifodata,
    input wire [0:0] in_iord_bl_call_ihc_1_i_fifovalid,
    input wire [31:0] in_iord_s2_i_fifodata,
    input wire [0:0] in_iord_s2_i_fifovalid,
    input wire [0:0] in_iowr_bl_s3_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_ihc_1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_ihc_1_o_fifoready,
    output wire [0:0] out_iord_s2_o_fifoalmost_full,
    output wire [0:0] out_iord_s2_o_fifoready,
    output wire [31:0] out_iowr_bl_s3_o_fifodata,
    output wire [0:0] out_iowr_bl_s3_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] arbiter_iord_s2_out_data_out0;
    wire [31:0] arbiter_iord_s2_out_data_out1;
    wire [31:0] arbiter_iord_s2_out_data_out2;
    wire [31:0] arbiter_iord_s2_out_data_out3;
    wire [0:0] arbiter_iord_s2_out_o_fifoalmost_full;
    wire [0:0] arbiter_iord_s2_out_o_fifoready;
    wire [0:0] arbiter_iord_s2_out_valid_out0;
    wire [0:0] arbiter_iord_s2_out_valid_out1;
    wire [0:0] arbiter_iord_s2_out_valid_out2;
    wire [0:0] arbiter_iord_s2_out_valid_out3;
    wire [0:0] bb_ihc_1_B0_out_iord_bl_call_ihc_1_o_fifoalmost_full;
    wire [0:0] bb_ihc_1_B0_out_iord_bl_call_ihc_1_o_fifoready;
    wire [0:0] bb_ihc_1_B0_out_stall_out_0;
    wire [0:0] bb_ihc_1_B0_out_valid_out_0;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_0_o_fifoalmost_full;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_0_o_fifoready;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_1_o_fifoalmost_full;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_1_o_fifoready;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_2_o_fifoalmost_full;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_2_o_fifoready;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_3_o_fifoalmost_full;
    wire [0:0] bb_ihc_1_B1_out_iord_bl_s2_3_o_fifoready;
    wire [31:0] bb_ihc_1_B1_out_iowr_bl_s3_o_fifodata;
    wire [0:0] bb_ihc_1_B1_out_iowr_bl_s3_o_fifovalid;
    wire [0:0] bb_ihc_1_B1_out_pipeline_valid_out;
    wire [0:0] bb_ihc_1_B1_out_stall_in_0;
    wire [0:0] bb_ihc_1_B1_out_stall_out_0;
    wire [0:0] bb_ihc_1_B1_out_stall_out_1;
    wire [0:0] bb_ihc_1_B1_out_valid_in_0;
    wire [0:0] bb_ihc_1_B1_out_valid_in_1;
    wire [0:0] bb_ihc_1_B1_out_valid_out_0;
    wire [1:0] c_i2_08_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo_out_valid_out;
    wire [0:0] ihc_1_B1_x_i_capture;
    wire ihc_1_B1_x_i_capture_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_clear;
    wire ihc_1_B1_x_i_clear_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_enable;
    wire ihc_1_B1_x_i_enable_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_shift;
    wire ihc_1_B1_x_i_shift_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_stall_pred;
    wire ihc_1_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_stall_succ;
    wire ihc_1_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_valid_loop;
    wire ihc_1_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_valid_pred;
    wire ihc_1_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] ihc_1_B1_x_i_valid_succ;
    wire ihc_1_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ihc_1_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_ihc_1_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_ihc_1_B1_sr_1_aunroll_x_out_o_data_0_tpl;


    // c_i2_08(CONSTANT,11)
    assign c_i2_08_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo(BLACKBOX,14)
    SDF_ABC_ACTOR_i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo thei_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo (
        .in_data_in(c_i2_08_q),
        .in_stall_in(bb_ihc_1_B1_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_ihc_12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_ihc_12_sr(BLACKBOX,13)
    SDF_ABC_ACTOR_i_llvm_fpga_pipeline_keep_going_ihc_12_sr thei_llvm_fpga_pipeline_keep_going_ihc_12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo_out_stall_out),
        .in_i_valid(bb_ihc_1_B1_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_ihc_12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_ihc_12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // arbiter_iord_s2(BLACKBOX,2)
    SDF_ABC_ACTOR_arbiter_iord_s2 thearbiter_iord_s2 (
        .in_almost_full_in0(bb_ihc_1_B1_out_iord_bl_s2_0_o_fifoalmost_full),
        .in_almost_full_in1(bb_ihc_1_B1_out_iord_bl_s2_1_o_fifoalmost_full),
        .in_almost_full_in2(bb_ihc_1_B1_out_iord_bl_s2_2_o_fifoalmost_full),
        .in_almost_full_in3(bb_ihc_1_B1_out_iord_bl_s2_3_o_fifoalmost_full),
        .in_i_fifodata(in_iord_s2_i_fifodata),
        .in_i_fifovalid(in_iord_s2_i_fifovalid),
        .in_ready_in0(bb_ihc_1_B1_out_iord_bl_s2_0_o_fifoready),
        .in_ready_in1(bb_ihc_1_B1_out_iord_bl_s2_1_o_fifoready),
        .in_ready_in2(bb_ihc_1_B1_out_iord_bl_s2_2_o_fifoready),
        .in_ready_in3(bb_ihc_1_B1_out_iord_bl_s2_3_o_fifoready),
        .out_data_out0(arbiter_iord_s2_out_data_out0),
        .out_data_out1(arbiter_iord_s2_out_data_out1),
        .out_data_out2(arbiter_iord_s2_out_data_out2),
        .out_data_out3(arbiter_iord_s2_out_data_out3),
        .out_o_fifoalmost_full(arbiter_iord_s2_out_o_fifoalmost_full),
        .out_o_fifoready(arbiter_iord_s2_out_o_fifoready),
        .out_valid_out0(arbiter_iord_s2_out_valid_out0),
        .out_valid_out1(arbiter_iord_s2_out_valid_out1),
        .out_valid_out2(arbiter_iord_s2_out_valid_out2),
        .out_valid_out3(arbiter_iord_s2_out_valid_out3),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ihc_1_B1(BLACKBOX,4)
    SDF_ABC_ACTOR_bb_ihc_1_B1 thebb_ihc_1_B1 (
        .in_forked_0(GND_q),
        .in_forked_1(bb_ihc_1_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_s2_0_i_fifodata(arbiter_iord_s2_out_data_out0),
        .in_iord_bl_s2_0_i_fifovalid(arbiter_iord_s2_out_valid_out0),
        .in_iord_bl_s2_1_i_fifodata(arbiter_iord_s2_out_data_out1),
        .in_iord_bl_s2_1_i_fifovalid(arbiter_iord_s2_out_valid_out1),
        .in_iord_bl_s2_2_i_fifodata(arbiter_iord_s2_out_data_out2),
        .in_iord_bl_s2_2_i_fifovalid(arbiter_iord_s2_out_valid_out2),
        .in_iord_bl_s2_3_i_fifodata(arbiter_iord_s2_out_data_out3),
        .in_iord_bl_s2_3_i_fifovalid(arbiter_iord_s2_out_valid_out3),
        .in_iowr_bl_s3_i_fifoready(in_iowr_bl_s3_i_fifoready),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_ihc_12_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_ihc_12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_ihc_1_B1_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_s2_0_o_fifoalmost_full(bb_ihc_1_B1_out_iord_bl_s2_0_o_fifoalmost_full),
        .out_iord_bl_s2_0_o_fifoready(bb_ihc_1_B1_out_iord_bl_s2_0_o_fifoready),
        .out_iord_bl_s2_1_o_fifoalmost_full(bb_ihc_1_B1_out_iord_bl_s2_1_o_fifoalmost_full),
        .out_iord_bl_s2_1_o_fifoready(bb_ihc_1_B1_out_iord_bl_s2_1_o_fifoready),
        .out_iord_bl_s2_2_o_fifoalmost_full(bb_ihc_1_B1_out_iord_bl_s2_2_o_fifoalmost_full),
        .out_iord_bl_s2_2_o_fifoready(bb_ihc_1_B1_out_iord_bl_s2_2_o_fifoready),
        .out_iord_bl_s2_3_o_fifoalmost_full(bb_ihc_1_B1_out_iord_bl_s2_3_o_fifoalmost_full),
        .out_iord_bl_s2_3_o_fifoready(bb_ihc_1_B1_out_iord_bl_s2_3_o_fifoready),
        .out_iowr_bl_s3_o_fifodata(bb_ihc_1_B1_out_iowr_bl_s3_o_fifodata),
        .out_iowr_bl_s3_o_fifovalid(bb_ihc_1_B1_out_iowr_bl_s3_o_fifovalid),
        .out_pipeline_valid_out(bb_ihc_1_B1_out_pipeline_valid_out),
        .out_stall_in_0(bb_ihc_1_B1_out_stall_in_0),
        .out_stall_out_0(bb_ihc_1_B1_out_stall_out_0),
        .out_stall_out_1(bb_ihc_1_B1_out_stall_out_1),
        .out_valid_in_0(bb_ihc_1_B1_out_valid_in_0),
        .out_valid_in_1(bb_ihc_1_B1_out_valid_in_1),
        .out_valid_out_0(bb_ihc_1_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ihc_1_B0(BLACKBOX,3)
    SDF_ABC_ACTOR_bb_ihc_1_B0 thebb_ihc_1_B0 (
        .in_iord_bl_call_ihc_1_i_fifodata(in_iord_bl_call_ihc_1_i_fifodata),
        .in_iord_bl_call_ihc_1_i_fifovalid(in_iord_bl_call_ihc_1_i_fifovalid),
        .in_stall_in_0(bb_ihc_1_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_iord_bl_call_ihc_1_o_fifoalmost_full(bb_ihc_1_B0_out_iord_bl_call_ihc_1_o_fifoalmost_full),
        .out_iord_bl_call_ihc_1_o_fifoready(bb_ihc_1_B0_out_iord_bl_call_ihc_1_o_fifoready),
        .out_stall_out_0(bb_ihc_1_B0_out_stall_out_0),
        .out_valid_out_0(bb_ihc_1_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ihc_1_B1_sr_1_aunroll_x(BLACKBOX,34)
    SDF_ABC_ACTOR_bb_ihc_1_B1_sr_1 thebb_ihc_1_B1_sr_1_aunroll_x (
        .in_i_stall(bb_ihc_1_B1_out_stall_out_1),
        .in_i_valid(bb_ihc_1_B0_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_ihc_1_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_ihc_1_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_ihc_1_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // ihc_1_B1_x(EXTIFACE,15)
    assign ihc_1_B1_x_i_capture = GND_q;
    assign ihc_1_B1_x_i_clear = GND_q;
    assign ihc_1_B1_x_i_enable = VCC_q;
    assign ihc_1_B1_x_i_shift = GND_q;
    assign ihc_1_B1_x_i_stall_pred = bb_ihc_1_B1_sr_1_aunroll_x_out_o_stall;
    assign ihc_1_B1_x_i_stall_succ = bb_ihc_1_B1_out_stall_in_0;
    assign ihc_1_B1_x_i_valid_loop = bb_ihc_1_B1_out_valid_in_0;
    assign ihc_1_B1_x_i_valid_pred = bb_ihc_1_B1_out_valid_in_1;
    assign ihc_1_B1_x_i_valid_succ = bb_ihc_1_B1_out_valid_out_0;
    assign ihc_1_B1_x_i_capture_bitsignaltemp = ihc_1_B1_x_i_capture[0];
    assign ihc_1_B1_x_i_clear_bitsignaltemp = ihc_1_B1_x_i_clear[0];
    assign ihc_1_B1_x_i_enable_bitsignaltemp = ihc_1_B1_x_i_enable[0];
    assign ihc_1_B1_x_i_shift_bitsignaltemp = ihc_1_B1_x_i_shift[0];
    assign ihc_1_B1_x_i_stall_pred_bitsignaltemp = ihc_1_B1_x_i_stall_pred[0];
    assign ihc_1_B1_x_i_stall_succ_bitsignaltemp = ihc_1_B1_x_i_stall_succ[0];
    assign ihc_1_B1_x_i_valid_loop_bitsignaltemp = ihc_1_B1_x_i_valid_loop[0];
    assign ihc_1_B1_x_i_valid_pred_bitsignaltemp = ihc_1_B1_x_i_valid_pred[0];
    assign ihc_1_B1_x_i_valid_succ_bitsignaltemp = ihc_1_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("ihc_1.B1")
    ) theihc_1_B1_x (
        .i_capture(ihc_1_B1_x_i_capture_bitsignaltemp),
        .i_clear(ihc_1_B1_x_i_clear_bitsignaltemp),
        .i_enable(ihc_1_B1_x_i_enable_bitsignaltemp),
        .i_shift(ihc_1_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(ihc_1_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(ihc_1_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(ihc_1_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(ihc_1_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(ihc_1_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_ihc_1_o_fifoalmost_full(GPOUT,26)
    assign out_iord_bl_call_ihc_1_o_fifoalmost_full = bb_ihc_1_B0_out_iord_bl_call_ihc_1_o_fifoalmost_full;

    // out_iord_bl_call_ihc_1_o_fifoready(GPOUT,27)
    assign out_iord_bl_call_ihc_1_o_fifoready = bb_ihc_1_B0_out_iord_bl_call_ihc_1_o_fifoready;

    // out_iord_s2_o_fifoalmost_full(GPOUT,28)
    assign out_iord_s2_o_fifoalmost_full = arbiter_iord_s2_out_o_fifoalmost_full;

    // out_iord_s2_o_fifoready(GPOUT,29)
    assign out_iord_s2_o_fifoready = arbiter_iord_s2_out_o_fifoready;

    // out_iowr_bl_s3_o_fifodata(GPOUT,30)
    assign out_iowr_bl_s3_o_fifodata = bb_ihc_1_B1_out_iowr_bl_s3_o_fifodata;

    // out_iowr_bl_s3_o_fifovalid(GPOUT,31)
    assign out_iowr_bl_s3_o_fifovalid = bb_ihc_1_B1_out_iowr_bl_s3_o_fifovalid;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = bb_ihc_1_B0_out_stall_out_0;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = GND_q;

endmodule
