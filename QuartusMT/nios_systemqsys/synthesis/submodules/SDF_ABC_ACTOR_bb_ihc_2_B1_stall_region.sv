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

// SystemVerilog created from bb_ihc_2_B1_stall_region
// Created for function/kernel SDF_ABC_ACTOR
// SystemVerilog created on Mon Oct 16 02:22:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR_bb_ihc_2_B1_stall_region (
    input wire [0:0] in_iowr_bl_s1_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_0_o_fifovalid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_s2_0_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_0_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_0_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_s1_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_1_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_1_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_2_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_2_o_fifovalid,
    input wire [0:0] in_iowr_bl_s1_2_i_fifoready,
    output wire [31:0] out_iowr_bl_s1_2_o_fifodata,
    output wire [0:0] out_iowr_bl_s1_2_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_3_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_3_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_3_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_4_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_4_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_4_o_fifovalid,
    input wire [0:0] in_iowr_bl_s2_5_i_fifoready,
    output wire [31:0] out_iowr_bl_s2_5_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_5_o_fifovalid,
    input wire [31:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_125_q;
    wire [32:0] i_add15_i_i_ihc_211_a;
    wire [32:0] i_add15_i_i_ihc_211_b;
    logic [32:0] i_add15_i_i_ihc_211_o;
    wire [32:0] i_add15_i_i_ihc_211_q;
    wire [0:0] i_iord_bl_s0_or_41_ihc_28_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_or_41_ihc_28_out_iord_bl_s0_o_fifoready;
    wire [31:0] i_iord_bl_s0_or_41_ihc_28_out_o_data;
    wire [0:0] i_iord_bl_s0_or_41_ihc_28_out_o_stall;
    wire [0:0] i_iord_bl_s0_or_41_ihc_28_out_o_valid;
    wire [31:0] i_iowr_bl_s1_or_34_ihc_216_out_iowr_bl_s1_2_o_fifodata;
    wire [0:0] i_iowr_bl_s1_or_34_ihc_216_out_iowr_bl_s1_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_or_34_ihc_216_out_o_ack;
    wire [0:0] i_iowr_bl_s1_or_34_ihc_216_out_o_stall;
    wire [0:0] i_iowr_bl_s1_or_34_ihc_216_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_valid;
    wire [31:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_iowr_bl_s1_1_o_fifodata;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_iowr_bl_s1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_o_stall;
    wire [0:0] i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_19_ihc_220_out_iowr_bl_s2_5_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_19_ihc_220_out_iowr_bl_s2_5_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_19_ihc_220_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_19_ihc_220_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_19_ihc_220_out_o_valid;
    wire [31:0] i_iowr_bl_s2_or_27_ihc_219_out_iowr_bl_s2_4_o_fifodata;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_219_out_iowr_bl_s2_4_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_219_out_o_ack;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_219_out_o_stall;
    wire [0:0] i_iowr_bl_s2_or_27_ihc_219_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_iowr_bl_s2_1_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_iowr_bl_s2_1_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_iowr_bl_s2_2_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_iowr_bl_s2_2_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_ack;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_valid;
    wire [31:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_iowr_bl_s2_3_o_fifodata;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_iowr_bl_s2_3_o_fifovalid;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_o_stall;
    wire [0:0] i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_valid_out;
    wire [0:0] i_or_add15_i_i29_ihc_214_s;
    reg [31:0] i_or_add15_i_i29_ihc_214_q;
    wire [31:0] bgTrunc_i_add15_i_i_ihc_211_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_q;
    reg [0:0] redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_q;
    reg [0:0] redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q;
    reg [0:0] redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_q;
    reg [0:0] redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q;
    reg [0:0] redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_2_0_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_0_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_1_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_2_q;
    reg [0:0] redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    reg [0:0] redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    reg [31:0] redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_q;
    reg [31:0] redist9_i_or_add15_i_i29_ihc_214_q_1_0_q;
    reg [0:0] redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_q;
    reg [0:0] redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q;
    reg [0:0] redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_q;
    reg [0:0] redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_q;
    reg [0:0] redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_q;
    reg [0:0] redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_iord_bl_s0_or_41_ihc_28_q;
    wire [31:0] bubble_select_i_iord_bl_s0_or_41_ihc_28_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_or_34_ihc_216_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_or_34_ihc_216_b;
    wire [0:0] bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_q;
    wire [0:0] bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_19_ihc_220_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_19_ihc_220_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_or_27_ihc_219_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_or_27_ihc_219_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_b;
    wire [0:0] bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_q;
    wire [0:0] bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c;
    wire [2:0] bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_d;
    wire [0:0] bubble_join_ihc_2_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ihc_2_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_or0;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_V0;
    wire [0:0] SE_out_i_iord_bl_s0_or_41_ihc_28_V1;
    wire [0:0] SE_in_i_iowr_bl_s1_or_34_ihc_216_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_or_34_ihc_216_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_or_34_ihc_216_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_or_34_ihc_216_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_or_34_ihc_216_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_or_34_ihc_216_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_or_34_ihc_216_V0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_and0;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall;
    wire [0:0] SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_V0;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_19_ihc_220_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_or_19_ihc_220_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_or_19_ihc_220_and1;
    wire [0:0] SE_in_i_iowr_bl_s2_or_19_ihc_220_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_19_ihc_220_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_19_ihc_220_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_19_ihc_220_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_19_ihc_220_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_or_27_ihc_219_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_or_27_ihc_219_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_or_27_ihc_219_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_or_27_ihc_219_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_or_27_ihc_219_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_V0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_and0;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall;
    wire [0:0] SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_and0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_V0;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_217_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_217_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_backStall;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_wireValid;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_wireStall;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_StallValid;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_toReg0;
    reg [0:0] SE_i_or_add15_i_i29_ihc_214_fromReg0;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_consumed0;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_toReg1;
    reg [0:0] SE_i_or_add15_i_i29_ihc_214_fromReg1;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_consumed1;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_and0;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_or0;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_backStall;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_V0;
    wire [0:0] SE_i_or_add15_i_i29_ihc_214_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V2;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ihc_2_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V2;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_or1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V2;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0;
    reg [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_or0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V0;
    wire [0:0] SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V1;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    reg [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_or0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_or1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backStall;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V0;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V1;
    wire [0:0] SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V2;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0;
    reg [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_or0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backStall;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V0;
    wire [0:0] SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V1;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    reg [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    wire [0:0] SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1;
    reg [0:0] SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_V0;
    reg [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0;
    reg [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_1;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_or0;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backStall;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V0;
    wire [0:0] SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V1;
    reg [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_V0;
    reg [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_V0;
    reg [0:0] SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_V0;
    reg [0:0] SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_V0;
    reg [0:0] SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_V0;
    reg [0:0] SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0;
    wire [0:0] SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_v_s_0;
    wire [0:0] SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backEN;
    wire [0:0] SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backStall;
    wire [0:0] SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D1;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D2;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0;
    reg [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_D0;
    wire [0:0] SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_D1;
    wire [0:0] SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_D0;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0;
    reg [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backStall;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_D0;
    wire [0:0] SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_D1;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_i_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid;
    reg [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_data0;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backStall;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V;
    wire [0:0] SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_D0;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_D0;
    wire [0:0] SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid;
    reg [31:0] SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V;
    wire [31:0] SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_D0;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_i_valid;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_and0;
    reg [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data0;
    reg [31:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data1;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_V;
    wire [0:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_D0;
    wire [31:0] SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_D1;
    wire [0:0] SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_i_valid;
    reg [0:0] SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid;
    reg [0:0] SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_data0;
    wire [0:0] SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backStall;
    wire [0:0] SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_V;
    wire [0:0] SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_D0;


    // bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_213(BITJOIN,152)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_q = i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_213(BITSELECT,153)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_q[0:0]);

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_215(BITJOIN,155)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_q = i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_215(BITSELECT,156)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,109)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_b, redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_2_0_q};

    // SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_217(STALLENABLE,199)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_217_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_217_wireValid = i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_o_valid;

    // coalesced_delay_0_0(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,110)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_iowr_bl_s2_unnamed_ihc_27_ihc_217(BLACKBOX,19)@12
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_3_o_fifodata@20000000
    // out out_iowr_bl_s2_3_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s2_unnamed_ihc_27_ihc_20 thei_iowr_bl_s2_unnamed_ihc_27_ihc_217 (
        .in_c1_exe2(sel_for_coalesced_delay_0_b),
        .in_i_data(c_i32_125_q),
        .in_i_dependence(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_27_ihc_217_backStall),
        .in_i_valid(SE_coalesced_delay_0_0_V0),
        .in_iowr_bl_s2_3_i_fifoready(in_iowr_bl_s2_3_i_fifoready),
        .out_iowr_bl_s2_3_o_fifodata(i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_iowr_bl_s2_3_o_fifodata),
        .out_iowr_bl_s2_3_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_iowr_bl_s2_3_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,240)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_o_stall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_0(STALLREG,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215(STALLENABLE,197)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall = SR_SE_coalesced_delay_0_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_and0 = i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_valid;
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V2 & SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_and0;

    // redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0(REG,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_q <= $unsigned(SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_D0);
        end
    end

    // redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_2_0(REG,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b1)
        begin
            redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_2_0_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D1);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_26_ihc_215(BLACKBOX,18)@11
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_2_o_fifodata@20000000
    // out out_iowr_bl_s2_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s2_unnamed_ihc_26_ihc_20 thei_iowr_bl_s2_unnamed_ihc_26_ihc_215 (
        .in_c1_exe2(redist4_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_2_0_q),
        .in_i_data(c_i32_125_q),
        .in_i_dependence(redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_V0),
        .in_iowr_bl_s2_2_i_fifoready(in_iowr_bl_s2_2_i_fifoready),
        .out_iowr_bl_s2_2_o_fifodata(i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_iowr_bl_s2_2_o_fifodata),
        .out_iowr_bl_s2_2_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_iowr_bl_s2_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_1(REG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D2);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D0);
        end
    end

    // bubble_join_i_iord_bl_s0_or_41_ihc_28(BITJOIN,133)
    assign bubble_join_i_iord_bl_s0_or_41_ihc_28_q = i_iord_bl_s0_or_41_ihc_28_out_o_data;

    // bubble_select_i_iord_bl_s0_or_41_ihc_28(BITSELECT,134)
    assign bubble_select_i_iord_bl_s0_or_41_ihc_28_b = $unsigned(bubble_join_i_iord_bl_s0_or_41_ihc_28_q[31:0]);

    // i_add15_i_i_ihc_211(ADD,9)@12
    assign i_add15_i_i_ihc_211_a = {1'b0, bubble_select_i_iord_bl_s0_or_41_ihc_28_b};
    assign i_add15_i_i_ihc_211_b = {1'b0, c_i32_125_q};
    assign i_add15_i_i_ihc_211_o = $unsigned(i_add15_i_i_ihc_211_a) + $unsigned(i_add15_i_i_ihc_211_b);
    assign i_add15_i_i_ihc_211_q = i_add15_i_i_ihc_211_o[32:0];

    // bgTrunc_i_add15_i_i_ihc_211_sel_x(BITSELECT,66)@12
    assign bgTrunc_i_add15_i_i_ihc_211_sel_x_b = i_add15_i_i_ihc_211_q[31:0];

    // redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0(REG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_q <= $unsigned(SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_D0);
        end
    end

    // redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_3(REG,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_3_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_D1);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_or_add15_i_i29_ihc_214(MUX,24)@13
    assign i_or_add15_i_i29_ihc_214_s = redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_3_q;
    always @(i_or_add15_i_i29_ihc_214_s or redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_q or c_i32_125_q)
    begin
        unique case (i_or_add15_i_i29_ihc_214_s)
            1'b0 : i_or_add15_i_i29_ihc_214_q = redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_q;
            1'b1 : i_or_add15_i_i29_ihc_214_q = c_i32_125_q;
            default : i_or_add15_i_i29_ihc_214_q = 32'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221(STALLENABLE,205)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_wireValid = i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_valid_out;

    // i_iowr_bl_s1_or_34_ihc_216(BLACKBOX,11)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_2_o_fifodata@20000000
    // out out_iowr_bl_s1_2_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s1_or_34_ihc_20 thei_iowr_bl_s1_or_34_ihc_216 (
        .in_c1_exe1(redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_q),
        .in_i_data(redist9_i_or_add15_i_i29_ihc_214_q_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_or_34_ihc_216_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_or_34_ihc_216_V0),
        .in_iowr_bl_s1_2_i_fifoready(in_iowr_bl_s1_2_i_fifoready),
        .out_iowr_bl_s1_2_o_fifodata(i_iowr_bl_s1_or_34_ihc_216_out_iowr_bl_s1_2_o_fifodata),
        .out_iowr_bl_s1_2_o_fifovalid(i_iowr_bl_s1_or_34_ihc_216_out_iowr_bl_s1_2_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_or_34_ihc_216_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_or_34_ihc_216_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_or_34_ihc_216_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s1_or_34_ihc_216(STALLENABLE,183)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_or_34_ihc_216_V0 = SE_out_i_iowr_bl_s1_or_34_ihc_216_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_or_34_ihc_216_backStall = SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_or_34_ihc_216_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_or_34_ihc_216_wireValid = i_iowr_bl_s1_or_34_ihc_216_out_o_valid;

    // SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0(STALLENABLE,239)
    // Valid signal propagation
    assign SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_V0 = SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_stall_out & SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backEN = ~ (SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_v_s_0 = SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s1_or_34_ihc_216_V0;
    // Backward Stall generation
    assign SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backStall = ~ (SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0 <= SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0 & SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_R_v_0 <= SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218(STALLENABLE,207)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_wireValid = i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_valid_out;

    // bubble_join_i_iowr_bl_s1_or_34_ihc_216(BITJOIN,137)
    assign bubble_join_i_iowr_bl_s1_or_34_ihc_216_q = i_iowr_bl_s1_or_34_ihc_216_out_o_ack;

    // bubble_select_i_iowr_bl_s1_or_34_ihc_216(BITSELECT,138)
    assign bubble_select_i_iowr_bl_s1_or_34_ihc_216_b = $unsigned(bubble_join_i_iowr_bl_s1_or_34_ihc_216_q[0:0]);

    // redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0(REG,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s1_or_34_ihc_216_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218(BLACKBOX,23)@15
    // in in_stall_in@20000000
    // out out_data_out@16
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@16
    SDF_ABC_ACTOR_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_20 thei_llvm_fpga_push_i1_memdep_phi_push4_ihc_218 (
        .in_data_in(redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_feedback_stall_out_4),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_backStall),
        .in_valid_in(SE_redist16_i_iowr_bl_s1_or_34_ihc_216_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(BLACKBOX,21)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    SDF_ABC_ACTOR_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23 (
        .in_data_in(GND_q),
        .in_dir(redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i1_memdep_phi_push4_ihc_218_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall),
        .in_valid_in(SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,166)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,167)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,209)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ihc_2_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ihc_2_B1_merge_reg_aunroll_x(BLACKBOX,89)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    SDF_ABC_ACTOR_ihc_2_B1_merge_reg theihc_2_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ihc_2_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ihc_2_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_ihc_2_B1_merge_reg_aunroll_x(BITJOIN,176)
    assign bubble_join_ihc_2_B1_merge_reg_aunroll_x_q = ihc_2_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ihc_2_B1_merge_reg_aunroll_x(BITSELECT,177)
    assign bubble_select_ihc_2_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ihc_2_B1_merge_reg_aunroll_x_q[0:0]);

    // SE_out_ihc_2_B1_merge_reg_aunroll_x(STALLENABLE,217)
    // Valid signal propagation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_V0 = SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall | ~ (SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_ihc_2_B1_merge_reg_aunroll_x_wireValid = ihc_2_B1_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BLACKBOX,87)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@7
    // out out_c0_exit_1_tpl@7
    // out out_c0_exit_2_tpl@7
    SDF_ABC_ACTOR_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21 thei_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall),
        .in_i_valid(SE_out_ihc_2_B1_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_ihc_2_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(STALLENABLE,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0 = (~ (SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_wireValid = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_o_valid;

    // SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,231)
    // Valid signal propagation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V1 = SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_stall_out & SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_stall_out & SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0 = SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 | SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

            if (SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 & SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg(STALLFIFO,307)
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24(STALLENABLE,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed1 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_wireValid = i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITJOIN,170)
    assign bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q = {i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x(BITSELECT,171)
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_q[1:1]);

    // redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0(REG,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24(BLACKBOX,20)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    SDF_ABC_ACTOR_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_20 thei_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24 (
        .in_data_in(GND_q),
        .in_dir(redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_5(i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_backStall),
        .in_valid_in(SE_redist7_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_c0_exit_2_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_feedback_stall_out_5),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_or_19_ihc_220(BITJOIN,143)
    assign bubble_join_i_iowr_bl_s2_or_19_ihc_220_q = i_iowr_bl_s2_or_19_ihc_220_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_19_ihc_220(BITSELECT,144)
    assign bubble_select_i_iowr_bl_s2_or_19_ihc_220_b = $unsigned(bubble_join_i_iowr_bl_s2_or_19_ihc_220_q[0:0]);

    // redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_or_19_ihc_220_b);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221(BLACKBOX,22)@15
    // in in_stall_in@20000000
    // out out_data_out@16
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@16
    SDF_ABC_ACTOR_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_20 thei_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221 (
        .in_data_in(redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_feedback_stall_out_5),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_backStall),
        .in_valid_in(SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0(STALLENABLE,237)
    // Valid signal propagation
    assign SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_V0 = SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_s_tv_0 = i_llvm_fpga_push_i1_memdep_phi42_push5_ihc_221_out_stall_out & SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backEN = ~ (SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_v_s_0 = SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_or_19_ihc_220_V0;
    // Backward Stall generation
    assign SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backStall = ~ (SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0 <= SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0 & SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_R_v_0 <= SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_iowr_bl_s2_or_19_ihc_220(STALLENABLE,189)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_19_ihc_220_V0 = SE_out_i_iowr_bl_s2_or_19_ihc_220_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_19_ihc_220_backStall = SE_redist14_i_iowr_bl_s2_or_19_ihc_220_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_19_ihc_220_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_19_ihc_220_wireValid = i_iowr_bl_s2_or_19_ihc_220_out_o_valid;

    // SE_in_i_iowr_bl_s2_or_27_ihc_219(STALLENABLE,190)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_or_27_ihc_219_V0 = SE_in_i_iowr_bl_s2_or_27_ihc_219_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall = i_iowr_bl_s2_or_27_ihc_219_out_o_stall | ~ (SE_in_i_iowr_bl_s2_or_27_ihc_219_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_or_27_ihc_219_wireValid = SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_V;

    // i_iowr_bl_s2_or_27_ihc_219(BLACKBOX,15)@13
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_4_o_fifodata@20000000
    // out out_iowr_bl_s2_4_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s2_or_27_ihc_20 thei_iowr_bl_s2_or_27_ihc_219 (
        .in_c1_exe1(SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_D0),
        .in_i_data(SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_D1),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_27_ihc_219_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_or_27_ihc_219_V0),
        .in_iowr_bl_s2_4_i_fifoready(in_iowr_bl_s2_4_i_fifoready),
        .out_iowr_bl_s2_4_o_fifodata(i_iowr_bl_s2_or_27_ihc_219_out_iowr_bl_s2_4_o_fifodata),
        .out_iowr_bl_s2_4_o_fifovalid(i_iowr_bl_s2_or_27_ihc_219_out_iowr_bl_s2_4_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_27_ihc_219_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_27_ihc_219_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_27_ihc_219_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_or_27_ihc_219(BITJOIN,146)
    assign bubble_join_i_iowr_bl_s2_or_27_ihc_219_q = i_iowr_bl_s2_or_27_ihc_219_out_o_ack;

    // bubble_select_i_iowr_bl_s2_or_27_ihc_219(BITSELECT,147)
    assign bubble_select_i_iowr_bl_s2_or_27_ihc_219_b = $unsigned(bubble_join_i_iowr_bl_s2_or_27_ihc_219_q[0:0]);

    // SE_out_i_iowr_bl_s2_or_27_ihc_219(STALLENABLE,191)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_or_27_ihc_219_V0 = SE_out_i_iowr_bl_s2_or_27_ihc_219_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_or_27_ihc_219_backStall = SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_or_27_ihc_219_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_or_27_ihc_219_wireValid = i_iowr_bl_s2_or_27_ihc_219_out_o_valid;

    // SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0(STALLREG,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid <= SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backStall & (SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid | SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_i_valid);

            if (SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_or_27_ihc_219_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_or_27_ihc_219_V0;
    // Stall signal propagation
    assign SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backStall = SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid | ~ (SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_V = SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid : SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_i_valid;

    assign SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_D0 = SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_or_27_ihc_219_b;

    // redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0(REG,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_q <= $unsigned(SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_D0);
        end
    end

    // redist9_i_or_add15_i_i29_ihc_214_q_1_0(REG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_or_add15_i_i29_ihc_214_q_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN == 1'b1)
        begin
            redist9_i_or_add15_i_i29_ihc_214_q_1_0_q <= $unsigned(SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_D0);
        end
    end

    // redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0(REG,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q <= $unsigned(SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_D0);
        end
    end

    // SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0(STALLREG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid <= 1'b0;
            SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backStall & (SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid | SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_i_valid);

            if (SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_data0 <= $unsigned(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_i_valid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V1;
    // Stall signal propagation
    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backStall = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid | ~ (SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_i_valid);

    // Valid
    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid : SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_i_valid;

    assign SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_D0 = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_valid == 1'b1 ? SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_r_data0 : redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q;

    // redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b1)
        begin
            redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_q <= $unsigned(SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_D0);
        end
    end

    // i_iowr_bl_s2_or_19_ihc_220(BLACKBOX,14)@14
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_5_o_fifodata@20000000
    // out out_iowr_bl_s2_5_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s2_or_19_ihc_20 thei_iowr_bl_s2_or_19_ihc_220 (
        .in_c1_exe1(redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_q),
        .in_i_data(redist9_i_or_add15_i_i29_ihc_214_q_1_0_q),
        .in_i_dependence(redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_or_19_ihc_220_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_or_19_ihc_220_V0),
        .in_iowr_bl_s2_5_i_fifoready(in_iowr_bl_s2_5_i_fifoready),
        .out_iowr_bl_s2_5_o_fifodata(i_iowr_bl_s2_or_19_ihc_220_out_iowr_bl_s2_5_o_fifodata),
        .out_iowr_bl_s2_5_o_fifovalid(i_iowr_bl_s2_or_19_ihc_220_out_iowr_bl_s2_5_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_or_19_ihc_220_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_or_19_ihc_220_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_or_19_ihc_220_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0(STALLENABLE,236)
    // Valid signal propagation
    assign SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_V0 = SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_or_19_ihc_220_backStall & SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backEN = ~ (SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_v_s_0 = SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backEN & SR_SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backStall = ~ (SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0 <= SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0 & SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_R_v_0 <= SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0(STALLENABLE,224)
    // Valid signal propagation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V1 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1;
    // Stall signal propagation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0 = SE_in_i_iowr_bl_s1_or_34_ihc_216_backStall & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1 = SE_in_i_iowr_bl_s2_or_19_ihc_220_backStall & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1;
    // Backward Enable generation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_or0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0;
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN = ~ (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1 | SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN & SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V;
    // Backward Stall generation
    assign SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backStall = ~ (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 <= 1'b0;
            SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_0 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0;
            end

            if (SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backEN == 1'b0)
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 & SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_s_tv_1;
            end
            else
            begin
                SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_R_v_1 <= SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_or_19_ihc_220(STALLENABLE,188)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_or_19_ihc_220_V0 = SE_in_i_iowr_bl_s2_or_19_ihc_220_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_or_19_ihc_220_backStall = i_iowr_bl_s2_or_19_ihc_220_out_o_stall | ~ (SE_in_i_iowr_bl_s2_or_19_ihc_220_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_or_19_ihc_220_and0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V1;
    assign SE_in_i_iowr_bl_s2_or_19_ihc_220_and1 = SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V1 & SE_in_i_iowr_bl_s2_or_19_ihc_220_and0;
    assign SE_in_i_iowr_bl_s2_or_19_ihc_220_wireValid = SE_redist13_i_iowr_bl_s2_or_27_ihc_219_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_or_19_ihc_220_and1;

    // SE_in_i_iowr_bl_s1_or_34_ihc_216(STALLENABLE,182)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_or_34_ihc_216_V0 = SE_in_i_iowr_bl_s1_or_34_ihc_216_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_or_34_ihc_216_backStall = i_iowr_bl_s1_or_34_ihc_216_out_o_stall | ~ (SE_in_i_iowr_bl_s1_or_34_ihc_216_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_or_34_ihc_216_and0 = SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_V0;
    assign SE_in_i_iowr_bl_s1_or_34_ihc_216_wireValid = SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V0 & SE_in_i_iowr_bl_s1_or_34_ihc_216_and0;

    // SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0(STALLENABLE,233)
    // Valid signal propagation
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V0 = SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0;
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V1 = SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_0 = SE_in_i_iowr_bl_s1_or_34_ihc_216_backStall & SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0;
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_1 = SE_in_i_iowr_bl_s2_or_19_ihc_220_backStall & SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_or0 = SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_0;
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN = ~ (SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_1 | SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_v_s_0 = SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN & SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backStall = ~ (SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0 <= 1'b0;
            SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0 <= SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0 & SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_0 <= SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_v_s_0;
            end

            if (SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1 <= SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1 & SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_R_v_1 <= SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0(STALLREG,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid <= SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backStall & (SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid | SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_i_valid);

            if (SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_data0 <= i_or_add15_i_i29_ihc_214_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_i_valid = SE_i_or_add15_i_i29_ihc_214_V1;
    // Stall signal propagation
    assign SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backStall = SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid | ~ (SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_V = SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid : SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_i_valid;

    assign SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_D0 = SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_r_data0 : i_or_add15_i_i29_ihc_214_q;

    // SR_SE_in_i_iowr_bl_s2_or_27_ihc_219(STALLREG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid <= 1'b0;
            SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data0 <= 1'bx;
            SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid <= SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall & (SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid | SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_i_valid);

            if (SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data0 <= $unsigned(redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q);
                SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data1 <= i_or_add15_i_i29_ihc_214_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_and0 = SE_i_or_add15_i_i29_ihc_214_V0;
    assign SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_i_valid = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V0 & SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_and0;
    // Stall signal propagation
    assign SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall = SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid | ~ (SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_i_valid);

    // Valid
    assign SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_V = SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid : SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_i_valid;

    // Data0
    assign SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_D0 = SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data0 : redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_q;
    // Data1
    assign SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_D1 = SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_valid == 1'b1 ? SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_r_data1 : i_or_add15_i_i29_ihc_214_q;

    // SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0(STALLENABLE,223)
    // Valid signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V2 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    // Stall signal propagation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0 = SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1 = SR_SE_redist2_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_5_0_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2 = SE_i_or_add15_i_i29_ihc_214_backStall & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2;
    // Backward Enable generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_or0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_or1 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_or0;
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2 | SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN & SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V;
    // Backward Stall generation
    assign SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backStall = ~ (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= 1'b0;
            SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_0 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_1 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

            if (SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 & SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_s_tv_2;
            end
            else
            begin
                SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_R_v_2 <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_v_s_0;
            end

        end
    end

    // SE_i_or_add15_i_i29_ihc_214(STALLENABLE,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_or_add15_i_i29_ihc_214_fromReg0 <= '0;
            SE_i_or_add15_i_i29_ihc_214_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_or_add15_i_i29_ihc_214_fromReg0 <= SE_i_or_add15_i_i29_ihc_214_toReg0;
            // Successor 1
            SE_i_or_add15_i_i29_ihc_214_fromReg1 <= SE_i_or_add15_i_i29_ihc_214_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_or_add15_i_i29_ihc_214_consumed0 = (~ (SR_SE_in_i_iowr_bl_s2_or_27_ihc_219_backStall) & SE_i_or_add15_i_i29_ihc_214_wireValid) | SE_i_or_add15_i_i29_ihc_214_fromReg0;
    assign SE_i_or_add15_i_i29_ihc_214_consumed1 = (~ (SR_SE_redist9_i_or_add15_i_i29_ihc_214_q_1_0_backStall) & SE_i_or_add15_i_i29_ihc_214_wireValid) | SE_i_or_add15_i_i29_ihc_214_fromReg1;
    // Consuming
    assign SE_i_or_add15_i_i29_ihc_214_StallValid = SE_i_or_add15_i_i29_ihc_214_backStall & SE_i_or_add15_i_i29_ihc_214_wireValid;
    assign SE_i_or_add15_i_i29_ihc_214_toReg0 = SE_i_or_add15_i_i29_ihc_214_StallValid & SE_i_or_add15_i_i29_ihc_214_consumed0;
    assign SE_i_or_add15_i_i29_ihc_214_toReg1 = SE_i_or_add15_i_i29_ihc_214_StallValid & SE_i_or_add15_i_i29_ihc_214_consumed1;
    // Backward Stall generation
    assign SE_i_or_add15_i_i29_ihc_214_or0 = SE_i_or_add15_i_i29_ihc_214_consumed0;
    assign SE_i_or_add15_i_i29_ihc_214_wireStall = ~ (SE_i_or_add15_i_i29_ihc_214_consumed1 & SE_i_or_add15_i_i29_ihc_214_or0);
    assign SE_i_or_add15_i_i29_ihc_214_backStall = SE_i_or_add15_i_i29_ihc_214_wireStall;
    // Valid signal propagation
    assign SE_i_or_add15_i_i29_ihc_214_V0 = SE_i_or_add15_i_i29_ihc_214_wireValid & ~ (SE_i_or_add15_i_i29_ihc_214_fromReg0);
    assign SE_i_or_add15_i_i29_ihc_214_V1 = SE_i_or_add15_i_i29_ihc_214_wireValid & ~ (SE_i_or_add15_i_i29_ihc_214_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_or_add15_i_i29_ihc_214_and0 = SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V2;
    assign SE_i_or_add15_i_i29_ihc_214_wireValid = SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_V0 & SE_i_or_add15_i_i29_ihc_214_and0;

    // SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0(STALLENABLE,232)
    // Valid signal propagation
    assign SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_V0 = SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_s_tv_0 = SE_i_or_add15_i_i29_ihc_214_backStall & SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backEN = ~ (SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_v_s_0 = SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backEN & SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backStall = ~ (SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0 & SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0(STALLREG,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid <= SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backStall & (SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid | SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_i_valid);

            if (SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_data0 <= bgTrunc_i_add15_i_i_ihc_211_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_i_valid = SE_out_i_iord_bl_s0_or_41_ihc_28_V1;
    // Stall signal propagation
    assign SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backStall = SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid | ~ (SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_V = SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid : SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_i_valid;

    assign SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_D0 = SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_r_data0 : bgTrunc_i_add15_i_i_ihc_211_sel_x_b;

    // bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg(STALLFIFO,308)
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V0;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1(STALLENABLE,286)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and0 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and1 = bubble_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_wireValid = SE_out_i_iord_bl_s0_or_41_ihc_28_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_and1;

    // SE_out_i_iord_bl_s0_or_41_ihc_28(STALLENABLE,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg0 <= SE_out_i_iord_bl_s0_or_41_ihc_28_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg1 <= SE_out_i_iord_bl_s0_or_41_ihc_28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_backStall) & SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid) | SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg0;
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_consumed1 = (~ (SR_SE_redist8_bgTrunc_i_add15_i_i_ihc_211_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid) | SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_StallValid = SE_out_i_iord_bl_s0_or_41_ihc_28_backStall & SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid;
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_toReg0 = SE_out_i_iord_bl_s0_or_41_ihc_28_StallValid & SE_out_i_iord_bl_s0_or_41_ihc_28_consumed0;
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_toReg1 = SE_out_i_iord_bl_s0_or_41_ihc_28_StallValid & SE_out_i_iord_bl_s0_or_41_ihc_28_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_or0 = SE_out_i_iord_bl_s0_or_41_ihc_28_consumed0;
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_wireStall = ~ (SE_out_i_iord_bl_s0_or_41_ihc_28_consumed1 & SE_out_i_iord_bl_s0_or_41_ihc_28_or0);
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_backStall = SE_out_i_iord_bl_s0_or_41_ihc_28_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_V0 = SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid & ~ (SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg0);
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_V1 = SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid & ~ (SE_out_i_iord_bl_s0_or_41_ihc_28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_or_41_ihc_28_wireValid = i_iord_bl_s0_or_41_ihc_28_out_o_valid;

    // redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2(REG,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_D0);
        end
    end

    // i_iord_bl_s0_or_41_ihc_28(BLACKBOX,10)@12
    // in in_i_stall@20000000
    // out out_iord_bl_s0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_o_fifoready@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iord_bl_s0_or_41_ihc_20 thei_iord_bl_s0_or_41_ihc_28 (
        .in_c1_exe1(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_q),
        .in_i_stall(SE_out_i_iord_bl_s0_or_41_ihc_28_backStall),
        .in_i_valid(SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V1),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .out_iord_bl_s0_o_fifoalmost_full(i_iord_bl_s0_or_41_ihc_28_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(i_iord_bl_s0_or_41_ihc_28_out_iord_bl_s0_o_fifoready),
        .out_o_data(i_iord_bl_s0_or_41_ihc_28_out_o_data),
        .out_o_stall(i_iord_bl_s0_or_41_ihc_28_out_o_stall),
        .out_o_valid(i_iord_bl_s0_or_41_ihc_28_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_2(REG,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_2_q <= $unsigned(SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_D1);
        end
    end

    // SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0(STALLREG,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid <= 1'b0;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 <= 1'bx;
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid <= SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backStall & (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid | SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid);

            if (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_q);
                SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V0;
    // Stall signal propagation
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backStall = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid | ~ (SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid);

    // Valid
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_V = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid : SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_i_valid;

    // Data0
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_D0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_q;
    // Data1
    assign SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_D1 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_r_data1 : redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_2_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2(STALLENABLE,222)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0 = SR_SE_redist1_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_4_0_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1 = i_iord_bl_s0_or_41_ihc_28_out_o_stall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN & SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2(STALLREG,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backStall & (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid | SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backStall = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_V = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid : SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_i_valid;

    // Data0
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_D0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_q;
    // Data1
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_D1 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_r_data1 : redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_1_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1(STALLENABLE,221)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V2 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_2_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1 = SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2 = SE_out_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_or1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_or0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN & SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_s_tv_2;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215(STALLENABLE,196)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall = i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_wireValid = SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_and0;

    // SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0(STALLENABLE,234)
    // Valid signal propagation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_V0 = SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_26_ihc_215_backStall & SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backEN = ~ (SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_v_s_0 = SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backEN & SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_V;
    // Backward Stall generation
    assign SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backStall = ~ (SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0 <= SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0 & SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_R_v_0 <= SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0(STALLREG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid <= 1'b0;
            SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid <= SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backStall & (SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid | SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_i_valid);

            if (SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_data0 <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_i_valid = SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_V0;
    // Stall signal propagation
    assign SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backStall = SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid | ~ (SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_i_valid);

    // Valid
    assign SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_V = SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid : SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_i_valid;

    assign SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_D0 = SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_r_data0 : bubble_select_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_b;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213(STALLENABLE,195)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall = SR_SE_redist11_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid = i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_valid;

    // SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(STALLENABLE,193)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0 = SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall = SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24(BITJOIN,158)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_q = i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24(BITSELECT,159)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_q[0:0]);

    // i_iowr_bl_s2_unnamed_ihc_23_ihc_210(BLACKBOX,16)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_0_o_fifodata@20000000
    // out out_iowr_bl_s2_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s2_unnamed_ihc_23_ihc_20 thei_iowr_bl_s2_unnamed_ihc_23_ihc_210 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c),
        .in_i_data(c_i32_125_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_b),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0),
        .in_iowr_bl_s2_0_i_fifoready(in_iowr_bl_s2_0_i_fifoready),
        .out_iowr_bl_s2_0_o_fifodata(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifodata),
        .out_iowr_bl_s2_0_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(BITJOIN,149)
    assign bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_q = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack;

    // bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(BITSELECT,150)
    assign bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_b = $unsigned(bubble_join_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_q[0:0]);

    // redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0(REG,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_b);
        end
    end

    // redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0(REG,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c);
        end
    end

    // i_iowr_bl_s2_unnamed_ihc_25_ihc_213(BLACKBOX,17)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s2_1_o_fifodata@20000000
    // out out_iowr_bl_s2_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s2_unnamed_ihc_25_ihc_20 thei_iowr_bl_s2_unnamed_ihc_25_ihc_213 (
        .in_c1_exe2(redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q),
        .in_i_data(c_i32_125_q),
        .in_i_dependence(redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_V0),
        .in_iowr_bl_s2_1_i_fifoready(in_iowr_bl_s2_1_i_fifoready),
        .out_iowr_bl_s2_1_o_fifodata(i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_iowr_bl_s2_1_o_fifodata),
        .out_iowr_bl_s2_1_o_fifovalid(i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_iowr_bl_s2_1_o_fifovalid),
        .out_o_ack(i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_ack),
        .out_o_stall(i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_stall),
        .out_o_valid(i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0(STALLENABLE,235)
    // Valid signal propagation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_V0 = SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall & SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN = ~ (SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0 = SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0;
    // Backward Stall generation
    assign SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backStall = ~ (SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 <= SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 & SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_R_v_0 <= SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213(STALLENABLE,194)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall = i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V2;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_wireValid = SE_redist12_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_and0;

    // SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_212(STALLENABLE,187)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_wireValid = i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_o_valid;

    // bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_29(BITJOIN,140)
    assign bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_q = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack;

    // bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_29(BITSELECT,141)
    assign bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_b = $unsigned(bubble_join_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_q[0:0]);

    // redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0(REG,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backEN == 1'b1)
        begin
            redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_q <= $unsigned(bubble_select_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_b);
        end
    end

    // i_iowr_bl_s1_unnamed_ihc_24_ihc_212(BLACKBOX,13)@10
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_1_o_fifodata@20000000
    // out out_iowr_bl_s1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s1_unnamed_ihc_24_ihc_20 thei_iowr_bl_s1_unnamed_ihc_24_ihc_212 (
        .in_c1_exe2(redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q),
        .in_i_data(c_i32_125_q),
        .in_i_dependence(redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_q),
        .in_i_stall(SE_out_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_V0),
        .in_iowr_bl_s1_1_i_fifoready(in_iowr_bl_s1_1_i_fifoready),
        .out_iowr_bl_s1_1_o_fifodata(i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_iowr_bl_s1_1_o_fifodata),
        .out_iowr_bl_s1_1_o_fifovalid(i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_iowr_bl_s1_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0(STALLENABLE,238)
    // Valid signal propagation
    assign SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_V0 = SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_s_tv_0 = SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall & SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backEN = ~ (SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_v_s_0 = SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backEN & SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0;
    // Backward Stall generation
    assign SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backStall = ~ (SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0 <= SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0 & SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_R_v_0 <= SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212(STALLENABLE,186)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_V0 = SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall = i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_o_stall | ~ (SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_and0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V1;
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_wireValid = SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_V0 & SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_and0;

    // redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_0(REG,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_d);
        end
    end

    // redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0(REG,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q <= $unsigned(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_b);
        end
    end

    // SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1(STALLREG,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid <= 1'b0;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1 <= 1'bx;
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backStall & (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid | SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid);

            if (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0 <= $unsigned(redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1 <= $unsigned(redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q);
                SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2 <= $unsigned(redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backStall = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid | ~ (SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid);

    // Valid
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_V = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid : SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_i_valid;

    // Data0
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data0 : redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_q;
    // Data1
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D1 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data1 : redist3_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl_1_0_q;
    // Data2
    assign SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_D2 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_r_data2 : redist6_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl_4_0_q;

    // SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0(STALLENABLE,220)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_V2 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0 = SR_SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_1_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1 = SE_in_i_iowr_bl_s1_unnamed_ihc_24_ihc_212_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_2 = SE_in_i_iowr_bl_s2_unnamed_ihc_25_ihc_213_backStall & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or1 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or0;
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_2 | SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0 = SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall = ~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= 1'b0;
            SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_0 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_1 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

            if (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2 & SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_s_tv_2;
            end
            else
            begin
                SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_R_v_2 <= SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_v_s_0;
            end

        end
    end

    // SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210(STALLENABLE,192)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_V0 = SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_o_stall | ~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi42_pop5_ihc_24_V1;
    assign SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V1 & SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_and0;

    // i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(BLACKBOX,88)@7
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_c1_exit_0_tpl@9
    // out out_c1_exit_1_tpl@9
    // out out_c1_exit_2_tpl@9
    // out out_c1_exit_3_tpl@9
    SDF_ABC_ACTOR_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26 thei_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x (
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_c),
        .out_o_stall(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(STALLENABLE,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0 = (~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1 = (~ (SE_in_i_iowr_bl_s2_unnamed_ihc_23_ihc_210_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2 = (~ (SE_redist0_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl_3_0_backStall) & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_wireValid = i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(STALLENABLE,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1 = (~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_valid_out;

    // SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29(STALLENABLE,184)
    // Valid signal propagation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0 = SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    // Backward Stall generation
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_stall | ~ (SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_V1;
    assign SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid = SE_out_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_V0 & SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_and0;

    // SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29(STALLENABLE,185)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0 = SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall = SE_redist15_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack_1_0_backStall | ~ (SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_wireValid = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(BITJOIN,162)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_q = i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23(BITSELECT,163)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_q[0:0]);

    // c_i32_125(CONSTANT,4)
    assign c_i32_125_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(BITJOIN,173)
    assign bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q = {i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x(BITSELECT,174)
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_q[2:2]);

    // i_iowr_bl_s1_unnamed_ihc_22_ihc_29(BLACKBOX,12)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_s1_0_o_fifodata@20000000
    // out out_iowr_bl_s1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    SDF_ABC_ACTOR_i_iowr_bl_s1_unnamed_ihc_22_ihc_20 thei_iowr_bl_s1_unnamed_ihc_22_ihc_29 (
        .in_c1_exe2(bubble_select_i_sfc_s_c1_in_while_body_ihc_2s_c1_enter_ihc_26_aunroll_x_c),
        .in_i_data(c_i32_125_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_b),
        .in_i_stall(SE_out_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_backStall),
        .in_i_valid(SE_in_i_iowr_bl_s1_unnamed_ihc_22_ihc_29_V0),
        .in_iowr_bl_s1_0_i_fifoready(in_iowr_bl_s1_0_i_fifoready),
        .out_iowr_bl_s1_0_o_fifodata(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifodata),
        .out_iowr_bl_s1_0_o_fifovalid(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_ack),
        .out_o_stall(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_stall),
        .out_o_valid(i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_iowr_bl_s1_0_o_fifodata = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifodata;
    assign out_iowr_bl_s1_0_o_fifovalid = i_iowr_bl_s1_unnamed_ihc_22_ihc_29_out_iowr_bl_s1_0_o_fifovalid;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,64)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,68)
    assign out_iowr_bl_s2_0_o_fifodata = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifodata;
    assign out_iowr_bl_s2_0_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_23_ihc_210_out_iowr_bl_s2_0_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,69)@12
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i1_memdep_phi_pop4_ihc_23_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,71)
    assign out_iowr_bl_s1_1_o_fifodata = i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_iowr_bl_s1_1_o_fifodata;
    assign out_iowr_bl_s1_1_o_fifovalid = i_iowr_bl_s1_unnamed_ihc_24_ihc_212_out_iowr_bl_s1_1_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,73)
    assign out_iowr_bl_s2_1_o_fifodata = i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_iowr_bl_s2_1_o_fifodata;
    assign out_iowr_bl_s2_1_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_25_ihc_213_out_iowr_bl_s2_1_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,75)
    assign out_iowr_bl_s2_2_o_fifodata = i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_iowr_bl_s2_2_o_fifodata;
    assign out_iowr_bl_s2_2_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_26_ihc_215_out_iowr_bl_s2_2_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,77)
    assign out_iowr_bl_s1_2_o_fifodata = i_iowr_bl_s1_or_34_ihc_216_out_iowr_bl_s1_2_o_fifodata;
    assign out_iowr_bl_s1_2_o_fifovalid = i_iowr_bl_s1_or_34_ihc_216_out_iowr_bl_s1_2_o_fifovalid;

    // dupName_5_ext_sig_sync_out_x(GPOUT,79)
    assign out_iowr_bl_s2_3_o_fifodata = i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_iowr_bl_s2_3_o_fifodata;
    assign out_iowr_bl_s2_3_o_fifovalid = i_iowr_bl_s2_unnamed_ihc_27_ihc_217_out_iowr_bl_s2_3_o_fifovalid;

    // dupName_6_ext_sig_sync_out_x(GPOUT,81)
    assign out_iowr_bl_s2_4_o_fifodata = i_iowr_bl_s2_or_27_ihc_219_out_iowr_bl_s2_4_o_fifodata;
    assign out_iowr_bl_s2_4_o_fifovalid = i_iowr_bl_s2_or_27_ihc_219_out_iowr_bl_s2_4_o_fifovalid;

    // dupName_7_ext_sig_sync_out_x(GPOUT,83)
    assign out_iowr_bl_s2_5_o_fifodata = i_iowr_bl_s2_or_19_ihc_220_out_iowr_bl_s2_5_o_fifodata;
    assign out_iowr_bl_s2_5_o_fifovalid = i_iowr_bl_s2_or_19_ihc_220_out_iowr_bl_s2_5_o_fifovalid;

    // dupName_8_ext_sig_sync_out_x(GPOUT,85)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out = i_sfc_s_c0_in_while_body_ihc_2s_c0_enter1_ihc_21_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_ihc_22_exiting_stall_out;

    // dupName_9_ext_sig_sync_out_x(GPOUT,86)
    assign out_iord_bl_s0_o_fifoready = i_iord_bl_s0_or_41_ihc_28_out_iord_bl_s0_o_fifoready;
    assign out_iord_bl_s0_o_fifoalmost_full = i_iord_bl_s0_or_41_ihc_28_out_iord_bl_s0_o_fifoalmost_full;

endmodule
