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

// SystemVerilog created from bb_ihc_1_B1_stall_region
// Created for function/kernel SDF_ABC_ACTOR10
// SystemVerilog created on Mon Oct 16 02:43:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR10_bb_ihc_1_B1_stall_region (
    input wire [31:0] in_iord_bl_s2_0_i_fifodata,
    input wire [0:0] in_iord_bl_s2_0_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_0_o_fifoready,
    output wire [0:0] out_iord_bl_s2_0_o_fifoalmost_full,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_iord_bl_s2_1_i_fifodata,
    input wire [0:0] in_iord_bl_s2_1_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_1_o_fifoready,
    output wire [0:0] out_iord_bl_s2_1_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_iord_bl_s2_2_i_fifodata,
    input wire [0:0] in_iord_bl_s2_2_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_2_o_fifoready,
    output wire [0:0] out_iord_bl_s2_2_o_fifoalmost_full,
    input wire [31:0] in_iord_bl_s2_3_i_fifodata,
    input wire [0:0] in_iord_bl_s2_3_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_3_o_fifoready,
    output wire [0:0] out_iord_bl_s2_3_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_s3_i_fifoready,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out,
    output wire [31:0] out_iowr_bl_s3_o_fifodata,
    output wire [0:0] out_iowr_bl_s3_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_valid;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_iord_bl_s2_3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_iord_bl_s2_3_o_fifoready;
    wire [31:0] i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_data;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_valid;
    wire [31:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_iowr_bl_s3_o_fifodata;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_iowr_bl_s3_o_fifovalid;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_o_stall;
    wire [0:0] i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_toi1_intcast1_ihc_17_sel_x_b;
    wire [0:0] i_toi1_intcast2_ihc_19_sel_x_b;
    wire [0:0] i_toi1_intcast3_ihc_111_sel_x_b;
    wire [0:0] i_toi1_intcast_ihc_15_sel_x_b;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    reg [0:0] redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_q;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b;
    wire [31:0] bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_110_q;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_110_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b;
    wire [0:0] bubble_join_ihc_1_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_1_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_StallValid;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg0;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg1;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg2;
    reg [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg2;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed2;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_or0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_or1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_backStall;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V0;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V1;
    wire [0:0] SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V2;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_112_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_1_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_V0;


    // bubble_join_stall_entry(BITJOIN,82)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,83)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,106)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_1_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_1_B1_merge_reg_aunroll_x(BLACKBOX,58)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    SDF_ABC_ACTOR10_ihc_1_B1_merge_reg theihc_1_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_1_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_1_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_1_B1_merge_reg_aunroll_x(BITJOIN,89)
    assign bubble_join_ihc_1_B1_merge_reg_aunroll_x_q = ihc_1_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_1_B1_merge_reg_aunroll_x(BITSELECT,90)
    assign bubble_select_ihc_1_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_1_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_1_B1_merge_reg_aunroll_x(STALLENABLE,115)
    // Valid signal propagation
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall | ~ (SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_1_B1_merge_reg_aunroll_x_wireValid = ihc_1_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BLACKBOX,53)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@6
    // out out_c0_exit_1_tpl@6
    // out out_c0_exit_2_tpl@6
    SDF_ABC_ACTOR10_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11 thei_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall),
        .in_i_valid(SE_out_ihc_1_B1_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ihc_1_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(STALLENABLE,109)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_backStall = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_o_valid;

    // SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_112(STALLENABLE,101)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_112_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_112_wireValid = i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_110(BITJOIN,75)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_110_q = i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_110(BITSELECT,76)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_110_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_15_ihc_110_q[31:0]);

    // i_iowr_bl_s3_unnamed_ihc_16_ihc_112(BLACKBOX,11)@11
    // in in_i_stall@20000000
    // out out_iowr_bl_s3_o_fifodata@20000000
    // out out_iowr_bl_s3_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR10_i_iowr_bl_s3_unnamed_ihc_16_ihc_10 thei_iowr_bl_s3_unnamed_ihc_16_ihc_112 (
        .in_i_data(bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_110_b),
        .in_i_stall(SE_out_i_iowr_bl_s3_unnamed_ihc_16_ihc_112_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V1),
        .in_iowr_bl_s3_i_fifoready(in_iowr_bl_s3_i_fifoready),
        .out_iowr_bl_s3_o_fifodata(i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_iowr_bl_s3_o_fifodata),
        .out_iowr_bl_s3_o_fifovalid(i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_iowr_bl_s3_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_o_stall),
        .out_o_valid(i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14(BITJOIN,66)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14_q = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14(BITSELECT,67)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_12_ihc_14_q[31:0]);

    // i_toi1_intcast_ihc_15_sel_x(BITSELECT,57)@8
    assign i_toi1_intcast_ihc_15_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_12_ihc_14_b[0:0];

    // i_iord_bl_s2_unnamed_ihc_13_ihc_16(BLACKBOX,8)@8
    // in in_i_stall@20000000
    // out out_iord_bl_s2_1_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_1_o_fifoready@20000000
    // out out_o_data@9
    // out out_o_stall@20000000
    // out out_o_valid@9
    SDF_ABC_ACTOR10_i_iord_bl_s2_unnamed_ihc_13_ihc_10 thei_iord_bl_s2_unnamed_ihc_13_ihc_16 (
        .in_i_dependence(i_toi1_intcast_ihc_15_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V0),
        .in_iord_bl_s2_1_i_fifodata(in_iord_bl_s2_1_i_fifodata),
        .in_iord_bl_s2_1_i_fifovalid(in_iord_bl_s2_1_i_fifovalid),
        .out_iord_bl_s2_1_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoalmost_full),
        .out_iord_bl_s2_1_o_fifoready(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16(STALLENABLE,95)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_backStall = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_stall | ~ (SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_wireValid = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16(BITJOIN,69)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16_q = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16(BITSELECT,70)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_13_ihc_16_q[31:0]);

    // i_toi1_intcast1_ihc_17_sel_x(BITSELECT,54)@9
    assign i_toi1_intcast1_ihc_17_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_13_ihc_16_b[0:0];

    // i_iord_bl_s2_unnamed_ihc_14_ihc_18(BLACKBOX,9)@9
    // in in_i_stall@20000000
    // out out_iord_bl_s2_2_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_2_o_fifoready@20000000
    // out out_o_data@10
    // out out_o_stall@20000000
    // out out_o_valid@10
    SDF_ABC_ACTOR10_i_iord_bl_s2_unnamed_ihc_14_ihc_10 thei_iord_bl_s2_unnamed_ihc_14_ihc_18 (
        .in_i_dependence(i_toi1_intcast1_ihc_17_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_13_ihc_16_V0),
        .in_iord_bl_s2_2_i_fifodata(in_iord_bl_s2_2_i_fifodata),
        .in_iord_bl_s2_2_i_fifovalid(in_iord_bl_s2_2_i_fifovalid),
        .out_iord_bl_s2_2_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoalmost_full),
        .out_iord_bl_s2_2_o_fifoready(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18(STALLENABLE,97)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_backStall = i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_stall | ~ (SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_wireValid = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_valid;

    // bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18(BITJOIN,72)
    assign bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18_q = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_o_data;

    // bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18(BITSELECT,73)
    assign bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_ihc_14_ihc_18_q[31:0]);

    // i_toi1_intcast2_ihc_19_sel_x(BITSELECT,55)@10
    assign i_toi1_intcast2_ihc_19_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_14_ihc_18_b[0:0];

    // i_iord_bl_s2_unnamed_ihc_15_ihc_110(BLACKBOX,10)@10
    // in in_i_stall@20000000
    // out out_iord_bl_s2_3_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_3_o_fifoready@20000000
    // out out_o_data@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    SDF_ABC_ACTOR10_i_iord_bl_s2_unnamed_ihc_15_ihc_10 thei_iord_bl_s2_unnamed_ihc_15_ihc_110 (
        .in_i_dependence(i_toi1_intcast2_ihc_19_sel_x_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_backStall),
        .in_i_valid(SE_out_i_iord_bl_s2_unnamed_ihc_14_ihc_18_V0),
        .in_iord_bl_s2_3_i_fifodata(in_iord_bl_s2_3_i_fifodata),
        .in_iord_bl_s2_3_i_fifovalid(in_iord_bl_s2_3_i_fifovalid),
        .out_iord_bl_s2_3_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_iord_bl_s2_3_o_fifoalmost_full),
        .out_iord_bl_s2_3_o_fifoready(i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_iord_bl_s2_3_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110(STALLENABLE,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg0 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg1 <= '0;
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg0 <= SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg1 <= SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg1;
            // Successor 2
            SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg2 <= SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed1 = (~ (i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_o_stall) & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg1;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed2 = (~ (SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid) | SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_StallValid = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_backStall & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg0 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg1 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed1;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_toReg2 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_StallValid & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_or0 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_or1 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed1 & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_or0;
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireStall = ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_consumed2 & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_or1);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_backStall = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg0);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V1 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg1);
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V2 = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid & ~ (SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_wireValid = i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_o_valid;

    // SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0(STALLENABLE,116)
    // Valid signal propagation
    assign SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_V0 = SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_s_tv_0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_backStall & SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backEN = ~ (SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_v_s_0 = SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backEN & SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V2;
    // Backward Stall generation
    assign SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backStall = ~ (SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0 <= SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0 & SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_R_v_0 <= SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113(STALLENABLE,104)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_backStall = i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_wireValid = SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_V0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113(STALLENABLE,105)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_wireValid = i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_valid_out;

    // i_toi1_intcast3_ihc_111_sel_x(BITSELECT,56)@11
    assign i_toi1_intcast3_ihc_111_sel_x_b = bubble_select_i_iord_bl_s2_unnamed_ihc_15_ihc_110_b[0:0];

    // redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_q <= $unsigned(i_toi1_intcast3_ihc_111_sel_x_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113(BLACKBOX,13)@12
    // in in_stall_in@20000000
    // out out_data_out@13
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@13
    SDF_ABC_ACTOR10_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_10 thei_llvm_fpga_push_i1_memdep_phi_push3_ihc_113 (
        .in_data_in(redist0_i_toi1_intcast3_ihc_111_sel_x_b_1_0_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_feedback_stall_out_3),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BITJOIN,86)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x(BITSELECT,87)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(BLACKBOX,12)@6
    // in in_stall_in@20000000
    // out out_data_out@7
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@7
    SDF_ABC_ACTOR10_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_10 thei_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_b),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_ihc_113_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_backStall = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_valid_out;

    // SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_V0 = SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_o_stall | ~ (SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_wireValid = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(BITJOIN,79)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13(BITSELECT,80)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_q[0:0]);

    // i_iord_bl_s2_unnamed_ihc_12_ihc_14(BLACKBOX,7)@7
    // in in_i_stall@20000000
    // out out_iord_bl_s2_0_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_0_o_fifoready@20000000
    // out out_o_data@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    SDF_ABC_ACTOR10_i_iord_bl_s2_unnamed_ihc_12_ihc_10 thei_iord_bl_s2_unnamed_ihc_12_ihc_14 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_b),
        .in_i_stall(SE_out_i_iord_bl_s2_unnamed_ihc_12_ihc_14_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_ihc_13_V0),
        .in_iord_bl_s2_0_i_fifodata(in_iord_bl_s2_0_i_fifodata),
        .in_iord_bl_s2_0_i_fifovalid(in_iord_bl_s2_0_i_fifovalid),
        .out_iord_bl_s2_0_o_fifoalmost_full(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoalmost_full),
        .out_iord_bl_s2_0_o_fifoready(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoready),
        .out_o_data(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_data),
        .out_o_stall(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iord_bl_s2_0_o_fifoready = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoready;
    assign out_iord_bl_s2_0_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_12_ihc_14_out_iord_bl_s2_0_o_fifoalmost_full;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,41)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,44)
    assign out_iord_bl_s2_1_o_fifoready = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoready;
    assign out_iord_bl_s2_1_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_13_ihc_16_out_iord_bl_s2_1_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,45)@11
    assign out_valid_out = SE_out_i_iord_bl_s2_unnamed_ihc_15_ihc_110_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,47)
    assign out_iord_bl_s2_2_o_fifoready = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoready;
    assign out_iord_bl_s2_2_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_14_ihc_18_out_iord_bl_s2_2_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,49)
    assign out_iord_bl_s2_3_o_fifoready = i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_iord_bl_s2_3_o_fifoready;
    assign out_iord_bl_s2_3_o_fifoalmost_full = i_iord_bl_s2_unnamed_ihc_15_ihc_110_out_iord_bl_s2_3_o_fifoalmost_full;

    // dupName_3_ext_sig_sync_out_x(GPOUT,51)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_1s_c0_enter1_ihc_11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_12_exiting_stall_out;

    // dupName_4_ext_sig_sync_out_x(GPOUT,52)
    assign out_iowr_bl_s3_o_fifodata = i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_iowr_bl_s3_o_fifodata;
    assign out_iowr_bl_s3_o_fifovalid = i_iowr_bl_s3_unnamed_ihc_16_ihc_112_out_iowr_bl_s3_o_fifovalid;

endmodule
