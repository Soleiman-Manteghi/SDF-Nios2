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

// SystemVerilog created from i_sfc_logic_s_c1_in_while_body_ihc_2s_c1_enter_ihc_20
// Created for function/kernel SDF_ABC_ACTOR10
// SystemVerilog created on Mon Oct 16 02:43:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module SDF_ABC_ACTOR10_i_sfc_logic_s_c1_in_whil0000c_2s_c1_enter_ihc_20 (
    output wire [0:0] out_c1_exi3_0_tpl,
    output wire [0:0] out_c1_exi3_1_tpl,
    output wire [0:0] out_c1_exi3_2_tpl,
    output wire [0:0] out_c1_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ihc_21,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_015_q;
    wire [31:0] c_i32_118_q;
    wire [0:0] i_acl_2_ihc_210_s;
    reg [31:0] i_acl_2_ihc_210_q;
    wire [0:0] i_cmp6_i_i_ihc_26_q;
    wire [0:0] i_cmp_i_i_ihc_23_q;
    wire [0:0] i_cmp_i_i_xor_ihc_25_q;
    wire [32:0] i_inc12_i_i_ihc_28_a;
    wire [32:0] i_inc12_i_i_ihc_28_b;
    logic [32:0] i_inc12_i_i_ihc_28_o;
    wire [32:0] i_inc12_i_i_ihc_28_q;
    wire [31:0] i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211_out_feedback_valid_out_3;
    wire [0:0] i_unnamed_ihc_29_qi;
    reg [0:0] i_unnamed_ihc_29_q;
    wire [31:0] bgTrunc_i_inc12_i_i_ihc_28_sel_x_b;
    wire [31:0] c_i32_1017_recast_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_valid_fanout_reg2_q_1_q;
    reg [0:0] redist1_sync_together22_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [0:0] redist2_sync_together22_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist3_bgTrunc_i_inc12_i_i_ihc_28_sel_x_b_1_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // redist2_sync_together22_aunroll_x_in_i_valid_1(DELAY,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together22_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together22_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,26)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_1017_recast_x(CONSTANT,22)
    assign c_i32_1017_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // valid_fanout_reg1(REG,27)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,35)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,28)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_valid_fanout_reg2_q_1(DELAY,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_valid_fanout_reg2_q_1_q <= $unsigned(valid_fanout_reg2_q);
        end
    end

    // c_i32_118(CONSTANT,6)
    assign c_i32_118_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc12_i_i_ihc_28(ADD,13)@9
    assign i_inc12_i_i_ihc_28_a = {1'b0, redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1_q};
    assign i_inc12_i_i_ihc_28_b = {1'b0, c_i32_118_q};
    assign i_inc12_i_i_ihc_28_o = $unsigned(i_inc12_i_i_ihc_28_a) + $unsigned(i_inc12_i_i_ihc_28_b);
    assign i_inc12_i_i_ihc_28_q = i_inc12_i_i_ihc_28_o[32:0];

    // bgTrunc_i_inc12_i_i_ihc_28_sel_x(BITSELECT,20)@9
    assign bgTrunc_i_inc12_i_i_ihc_28_sel_x_b = i_inc12_i_i_ihc_28_q[31:0];

    // redist3_bgTrunc_i_inc12_i_i_ihc_28_sel_x_b_1(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_inc12_i_i_ihc_28_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_bgTrunc_i_inc12_i_i_ihc_28_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc12_i_i_ihc_28_sel_x_b);
        end
    end

    // i_unnamed_ihc_29(LOGICAL,16)@9 + 1
    assign i_unnamed_ihc_29_qi = i_cmp_i_i_ihc_23_q | i_cmp6_i_i_ihc_26_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_ihc_29_delay ( .xin(i_unnamed_ihc_29_qi), .xout(i_unnamed_ihc_29_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // i_acl_2_ihc_210(MUX,9)@10
    assign i_acl_2_ihc_210_s = i_unnamed_ihc_29_q;
    always @(i_acl_2_ihc_210_s or redist3_bgTrunc_i_inc12_i_i_ihc_28_sel_x_b_1_q or c_i32_118_q)
    begin
        unique case (i_acl_2_ihc_210_s)
            1'b0 : i_acl_2_ihc_210_q = redist3_bgTrunc_i_inc12_i_i_ihc_28_sel_x_b_1_q;
            1'b1 : i_acl_2_ihc_210_q = c_i32_118_q;
            default : i_acl_2_ihc_210_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211(BLACKBOX,15)@10
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    SDF_ABC_ACTOR10_i_llvm_fpga_push_i32_zz20000tatic_0_push3_ihc_20 thei_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211 (
        .in_data_in(i_acl_2_ihc_210_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_feedback_stall_out_3),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist0_valid_fanout_reg2_q_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together22_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together22_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // c_i32_015(CONSTANT,5)
    assign c_i32_015_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22(BLACKBOX,14)@8
    // out out_feedback_stall_out_3@20000000
    SDF_ABC_ACTOR10_i_llvm_fpga_pop_i32_zz200000static_0_pop3_ihc_20 thei_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22 (
        .in_data_in(c_i32_015_q),
        .in_dir(redist1_sync_together22_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_3(i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_push3_ihc_211_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out);
        end
    end

    // i_cmp6_i_i_ihc_26(LOGICAL,10)@9
    assign i_cmp6_i_i_ihc_26_q = $unsigned(redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1_q == c_i32_1017_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp_i_i_xor_ihc_25(LOGICAL,12)@9
    assign i_cmp_i_i_xor_ihc_25_q = i_cmp_i_i_ihc_23_q ^ VCC_q;

    // i_cmp_i_i_ihc_23(LOGICAL,11)@9
    assign i_cmp_i_i_ihc_23_q = $unsigned(redist4_i_llvm_fpga_pop_i32_zz20task_function_actorarn3ihc6streamiijns_6bufferili8eeeeees4_s4_e3cnt_static_0_pop3_ihc_22_out_data_out_1_q == c_i32_015_q ? 1'b1 : 1'b0);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,24)@9
    assign out_c1_exi3_0_tpl = GND_q;
    assign out_c1_exi3_1_tpl = i_cmp_i_i_ihc_23_q;
    assign out_c1_exi3_2_tpl = i_cmp_i_i_xor_ihc_25_q;
    assign out_c1_exi3_3_tpl = i_cmp6_i_i_ihc_26_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_ihc_21 = GND_q;

endmodule
