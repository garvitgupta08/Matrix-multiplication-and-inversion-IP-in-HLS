// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="inverse_top,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.434000,HLS_SYN_LAT=587,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=20,HLS_SYN_FF=6952,HLS_SYN_LUT=12252,HLS_VERSION=2019_1}" *)

module inverse_top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        A_address1,
        A_ce1,
        A_we1,
        A_d1,
        A_q1,
        A_inv_address0,
        A_inv_ce0,
        A_inv_we0,
        A_inv_d0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [3:0] A_address1;
output   A_ce1;
output   A_we1;
output  [31:0] A_d1;
input  [31:0] A_q1;
output  [3:0] A_inv_address0;
output   A_inv_ce0;
output   A_inv_we0;
output  [31:0] A_inv_d0;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] A_inv_address0;
reg A_inv_ce0;
reg A_inv_we0;
reg[31:0] A_inv_d0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] singular_fu_149_p1;
reg   [0:0] singular_reg_225;
wire    ap_CS_fsm_state2;
wire    grp_lup_fu_110_ap_ready;
wire    grp_lup_fu_110_ap_done;
reg   [31:0] P_0_reg_229;
reg   [31:0] P_1_reg_234;
reg   [31:0] P_2_reg_239;
wire   [1:0] i_fu_171_p2;
reg   [1:0] i_reg_247;
wire    ap_CS_fsm_state9;
wire   [4:0] sub_ln247_fu_193_p2;
reg   [4:0] sub_ln247_reg_252;
wire   [0:0] icmp_ln244_fu_165_p2;
wire   [1:0] j_fu_205_p2;
wire    ap_CS_fsm_state10;
reg   [3:0] L_address0;
reg    L_ce0;
reg    L_we0;
wire   [31:0] L_q0;
reg   [3:0] U_address0;
reg    U_ce0;
reg    U_we0;
wire   [31:0] U_q0;
reg   [3:0] L_inv_address0;
reg    L_inv_ce0;
reg    L_inv_we0;
wire   [31:0] L_inv_q0;
reg   [3:0] U_inv_address0;
reg    U_inv_ce0;
reg    U_inv_we0;
wire   [31:0] U_inv_q0;
reg   [3:0] UL_inv_address0;
reg    UL_inv_ce0;
reg    UL_inv_we0;
wire   [31:0] UL_inv_q0;
wire    grp_lup_fu_110_ap_start;
wire    grp_lup_fu_110_ap_idle;
wire   [3:0] grp_lup_fu_110_A_address0;
wire    grp_lup_fu_110_A_ce0;
wire   [3:0] grp_lup_fu_110_A_address1;
wire    grp_lup_fu_110_A_ce1;
wire    grp_lup_fu_110_A_we1;
wire   [31:0] grp_lup_fu_110_A_d1;
wire   [3:0] grp_lup_fu_110_L_address0;
wire    grp_lup_fu_110_L_ce0;
wire    grp_lup_fu_110_L_we0;
wire   [31:0] grp_lup_fu_110_L_d0;
wire   [3:0] grp_lup_fu_110_U_address0;
wire    grp_lup_fu_110_U_ce0;
wire    grp_lup_fu_110_U_we0;
wire   [31:0] grp_lup_fu_110_U_d0;
wire   [0:0] grp_lup_fu_110_ap_return_0;
wire   [31:0] grp_lup_fu_110_ap_return_1;
wire   [31:0] grp_lup_fu_110_ap_return_2;
wire   [31:0] grp_lup_fu_110_ap_return_3;
wire    grp_Upper_inv_fu_120_ap_start;
wire    grp_Upper_inv_fu_120_ap_done;
wire    grp_Upper_inv_fu_120_ap_idle;
wire    grp_Upper_inv_fu_120_ap_ready;
wire   [3:0] grp_Upper_inv_fu_120_U_address0;
wire    grp_Upper_inv_fu_120_U_ce0;
wire   [3:0] grp_Upper_inv_fu_120_U_inv_address0;
wire    grp_Upper_inv_fu_120_U_inv_ce0;
wire    grp_Upper_inv_fu_120_U_inv_we0;
wire   [31:0] grp_Upper_inv_fu_120_U_inv_d0;
wire    grp_Lower_inv_fu_126_ap_start;
wire    grp_Lower_inv_fu_126_ap_done;
wire    grp_Lower_inv_fu_126_ap_idle;
wire    grp_Lower_inv_fu_126_ap_ready;
wire   [3:0] grp_Lower_inv_fu_126_L_address0;
wire    grp_Lower_inv_fu_126_L_ce0;
wire   [3:0] grp_Lower_inv_fu_126_L_inv_address0;
wire    grp_Lower_inv_fu_126_L_inv_ce0;
wire    grp_Lower_inv_fu_126_L_inv_we0;
wire   [31:0] grp_Lower_inv_fu_126_L_inv_d0;
wire    grp_matrix_mult_fu_132_ap_start;
wire    grp_matrix_mult_fu_132_ap_done;
wire    grp_matrix_mult_fu_132_ap_idle;
wire    grp_matrix_mult_fu_132_ap_ready;
wire   [3:0] grp_matrix_mult_fu_132_U_inv_address0;
wire    grp_matrix_mult_fu_132_U_inv_ce0;
wire   [3:0] grp_matrix_mult_fu_132_L_inv_address0;
wire    grp_matrix_mult_fu_132_L_inv_ce0;
wire   [3:0] grp_matrix_mult_fu_132_A_inv_address0;
wire    grp_matrix_mult_fu_132_A_inv_ce0;
wire    grp_matrix_mult_fu_132_A_inv_we0;
wire   [31:0] grp_matrix_mult_fu_132_A_inv_d0;
wire    grp_final_perm_fu_139_ap_start;
wire    grp_final_perm_fu_139_ap_done;
wire    grp_final_perm_fu_139_ap_idle;
wire    grp_final_perm_fu_139_ap_ready;
wire   [3:0] grp_final_perm_fu_139_UL_inv_address0;
wire    grp_final_perm_fu_139_UL_inv_ce0;
wire   [3:0] grp_final_perm_fu_139_A_inv_address0;
wire    grp_final_perm_fu_139_A_inv_ce0;
wire    grp_final_perm_fu_139_A_inv_we0;
wire   [31:0] grp_final_perm_fu_139_A_inv_d0;
reg   [0:0] ap_phi_mux_p_0_phi_fu_80_p4;
reg   [0:0] p_0_reg_76;
wire    ap_CS_fsm_state8;
reg    ap_block_state8_on_subcall_done;
reg   [1:0] i_0_reg_88;
wire   [0:0] icmp_ln246_fu_199_p2;
reg   [1:0] j_0_reg_99;
reg    grp_lup_fu_110_ap_start_reg;
reg    grp_Upper_inv_fu_120_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_Lower_inv_fu_126_ap_start_reg;
reg    grp_matrix_mult_fu_132_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_final_perm_fu_139_ap_start_reg;
wire    ap_CS_fsm_state7;
wire  signed [63:0] sext_ln247_fu_220_p1;
wire   [3:0] tmp_fu_181_p3;
wire   [4:0] zext_ln247_1_fu_189_p1;
wire   [4:0] zext_ln247_fu_177_p1;
wire   [4:0] zext_ln247_2_fu_211_p1;
wire   [4:0] add_ln247_fu_215_p2;
reg   [9:0] ap_NS_fsm;
reg    ap_block_state4_on_subcall_done;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_lup_fu_110_ap_start_reg = 1'b0;
#0 grp_Upper_inv_fu_120_ap_start_reg = 1'b0;
#0 grp_Lower_inv_fu_126_ap_start_reg = 1'b0;
#0 grp_matrix_mult_fu_132_ap_start_reg = 1'b0;
#0 grp_final_perm_fu_139_ap_start_reg = 1'b0;
end

inverse_top_L #(
    .DataWidth( 32 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
L_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(L_address0),
    .ce0(L_ce0),
    .we0(L_we0),
    .d0(grp_lup_fu_110_L_d0),
    .q0(L_q0)
);

inverse_top_L #(
    .DataWidth( 32 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
U_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(U_address0),
    .ce0(U_ce0),
    .we0(U_we0),
    .d0(grp_lup_fu_110_U_d0),
    .q0(U_q0)
);

inverse_top_L #(
    .DataWidth( 32 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
L_inv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(L_inv_address0),
    .ce0(L_inv_ce0),
    .we0(L_inv_we0),
    .d0(grp_Lower_inv_fu_126_L_inv_d0),
    .q0(L_inv_q0)
);

inverse_top_L #(
    .DataWidth( 32 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
U_inv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(U_inv_address0),
    .ce0(U_inv_ce0),
    .we0(U_inv_we0),
    .d0(grp_Upper_inv_fu_120_U_inv_d0),
    .q0(U_inv_q0)
);

inverse_top_L #(
    .DataWidth( 32 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
UL_inv_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(UL_inv_address0),
    .ce0(UL_inv_ce0),
    .we0(UL_inv_we0),
    .d0(grp_matrix_mult_fu_132_A_inv_d0),
    .q0(UL_inv_q0)
);

lup grp_lup_fu_110(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lup_fu_110_ap_start),
    .ap_done(grp_lup_fu_110_ap_done),
    .ap_idle(grp_lup_fu_110_ap_idle),
    .ap_ready(grp_lup_fu_110_ap_ready),
    .A_address0(grp_lup_fu_110_A_address0),
    .A_ce0(grp_lup_fu_110_A_ce0),
    .A_q0(A_q0),
    .A_address1(grp_lup_fu_110_A_address1),
    .A_ce1(grp_lup_fu_110_A_ce1),
    .A_we1(grp_lup_fu_110_A_we1),
    .A_d1(grp_lup_fu_110_A_d1),
    .A_q1(A_q1),
    .L_address0(grp_lup_fu_110_L_address0),
    .L_ce0(grp_lup_fu_110_L_ce0),
    .L_we0(grp_lup_fu_110_L_we0),
    .L_d0(grp_lup_fu_110_L_d0),
    .U_address0(grp_lup_fu_110_U_address0),
    .U_ce0(grp_lup_fu_110_U_ce0),
    .U_we0(grp_lup_fu_110_U_we0),
    .U_d0(grp_lup_fu_110_U_d0),
    .ap_return_0(grp_lup_fu_110_ap_return_0),
    .ap_return_1(grp_lup_fu_110_ap_return_1),
    .ap_return_2(grp_lup_fu_110_ap_return_2),
    .ap_return_3(grp_lup_fu_110_ap_return_3)
);

Upper_inv grp_Upper_inv_fu_120(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Upper_inv_fu_120_ap_start),
    .ap_done(grp_Upper_inv_fu_120_ap_done),
    .ap_idle(grp_Upper_inv_fu_120_ap_idle),
    .ap_ready(grp_Upper_inv_fu_120_ap_ready),
    .U_address0(grp_Upper_inv_fu_120_U_address0),
    .U_ce0(grp_Upper_inv_fu_120_U_ce0),
    .U_q0(U_q0),
    .U_inv_address0(grp_Upper_inv_fu_120_U_inv_address0),
    .U_inv_ce0(grp_Upper_inv_fu_120_U_inv_ce0),
    .U_inv_we0(grp_Upper_inv_fu_120_U_inv_we0),
    .U_inv_d0(grp_Upper_inv_fu_120_U_inv_d0),
    .U_inv_q0(U_inv_q0)
);

Lower_inv grp_Lower_inv_fu_126(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Lower_inv_fu_126_ap_start),
    .ap_done(grp_Lower_inv_fu_126_ap_done),
    .ap_idle(grp_Lower_inv_fu_126_ap_idle),
    .ap_ready(grp_Lower_inv_fu_126_ap_ready),
    .L_address0(grp_Lower_inv_fu_126_L_address0),
    .L_ce0(grp_Lower_inv_fu_126_L_ce0),
    .L_q0(L_q0),
    .L_inv_address0(grp_Lower_inv_fu_126_L_inv_address0),
    .L_inv_ce0(grp_Lower_inv_fu_126_L_inv_ce0),
    .L_inv_we0(grp_Lower_inv_fu_126_L_inv_we0),
    .L_inv_d0(grp_Lower_inv_fu_126_L_inv_d0),
    .L_inv_q0(L_inv_q0)
);

matrix_mult grp_matrix_mult_fu_132(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_matrix_mult_fu_132_ap_start),
    .ap_done(grp_matrix_mult_fu_132_ap_done),
    .ap_idle(grp_matrix_mult_fu_132_ap_idle),
    .ap_ready(grp_matrix_mult_fu_132_ap_ready),
    .U_inv_address0(grp_matrix_mult_fu_132_U_inv_address0),
    .U_inv_ce0(grp_matrix_mult_fu_132_U_inv_ce0),
    .U_inv_q0(U_inv_q0),
    .L_inv_address0(grp_matrix_mult_fu_132_L_inv_address0),
    .L_inv_ce0(grp_matrix_mult_fu_132_L_inv_ce0),
    .L_inv_q0(L_inv_q0),
    .A_inv_address0(grp_matrix_mult_fu_132_A_inv_address0),
    .A_inv_ce0(grp_matrix_mult_fu_132_A_inv_ce0),
    .A_inv_we0(grp_matrix_mult_fu_132_A_inv_we0),
    .A_inv_d0(grp_matrix_mult_fu_132_A_inv_d0)
);

final_perm grp_final_perm_fu_139(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_final_perm_fu_139_ap_start),
    .ap_done(grp_final_perm_fu_139_ap_done),
    .ap_idle(grp_final_perm_fu_139_ap_idle),
    .ap_ready(grp_final_perm_fu_139_ap_ready),
    .UL_inv_address0(grp_final_perm_fu_139_UL_inv_address0),
    .UL_inv_ce0(grp_final_perm_fu_139_UL_inv_ce0),
    .UL_inv_q0(UL_inv_q0),
    .P_0_read(P_0_reg_229),
    .P_1_read(P_1_reg_234),
    .P_2_read(P_2_reg_239),
    .A_inv_address0(grp_final_perm_fu_139_A_inv_address0),
    .A_inv_ce0(grp_final_perm_fu_139_A_inv_ce0),
    .A_inv_we0(grp_final_perm_fu_139_A_inv_we0),
    .A_inv_d0(grp_final_perm_fu_139_A_inv_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Lower_inv_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Lower_inv_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_Lower_inv_fu_126_ap_ready == 1'b1)) begin
            grp_Lower_inv_fu_126_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Upper_inv_fu_120_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Upper_inv_fu_120_ap_start_reg <= 1'b1;
        end else if ((grp_Upper_inv_fu_120_ap_ready == 1'b1)) begin
            grp_Upper_inv_fu_120_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_final_perm_fu_139_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_final_perm_fu_139_ap_start_reg <= 1'b1;
        end else if ((grp_final_perm_fu_139_ap_ready == 1'b1)) begin
            grp_final_perm_fu_139_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lup_fu_110_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_lup_fu_110_ap_start_reg <= 1'b1;
        end else if ((grp_lup_fu_110_ap_ready == 1'b1)) begin
            grp_lup_fu_110_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_matrix_mult_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_matrix_mult_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_matrix_mult_fu_132_ap_ready == 1'b1)) begin
            grp_matrix_mult_fu_132_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_lup_fu_110_ap_done == 1'b1) & (singular_fu_149_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_88 <= 2'd0;
    end else if (((icmp_ln246_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        i_0_reg_88 <= i_reg_247;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln244_fu_165_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        j_0_reg_99 <= 2'd0;
    end else if (((icmp_ln246_fu_199_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        j_0_reg_99 <= j_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln244_fu_165_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        p_0_reg_76 <= 1'd1;
    end else if (((singular_reg_225 == 1'd0) & (1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
        p_0_reg_76 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_lup_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        P_0_reg_229 <= grp_lup_fu_110_ap_return_1;
        P_1_reg_234 <= grp_lup_fu_110_ap_return_2;
        P_2_reg_239 <= grp_lup_fu_110_ap_return_3;
        singular_reg_225 <= grp_lup_fu_110_ap_return_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_reg_247 <= i_fu_171_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln244_fu_165_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        sub_ln247_reg_252 <= sub_ln247_fu_193_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        A_inv_address0 = sext_ln247_fu_220_p1;
    end else if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        A_inv_address0 = grp_final_perm_fu_139_A_inv_address0;
    end else begin
        A_inv_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        A_inv_ce0 = 1'b1;
    end else if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        A_inv_ce0 = grp_final_perm_fu_139_A_inv_ce0;
    end else begin
        A_inv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        A_inv_d0 = 32'd0;
    end else if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        A_inv_d0 = grp_final_perm_fu_139_A_inv_d0;
    end else begin
        A_inv_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln246_fu_199_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        A_inv_we0 = 1'b1;
    end else if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        A_inv_we0 = grp_final_perm_fu_139_A_inv_we0;
    end else begin
        A_inv_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        L_address0 = grp_Lower_inv_fu_126_L_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        L_address0 = grp_lup_fu_110_L_address0;
    end else begin
        L_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        L_ce0 = grp_Lower_inv_fu_126_L_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        L_ce0 = grp_lup_fu_110_L_ce0;
    end else begin
        L_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        L_inv_address0 = grp_matrix_mult_fu_132_L_inv_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        L_inv_address0 = grp_Lower_inv_fu_126_L_inv_address0;
    end else begin
        L_inv_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        L_inv_ce0 = grp_matrix_mult_fu_132_L_inv_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        L_inv_ce0 = grp_Lower_inv_fu_126_L_inv_ce0;
    end else begin
        L_inv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        L_inv_we0 = grp_Lower_inv_fu_126_L_inv_we0;
    end else begin
        L_inv_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        L_we0 = grp_lup_fu_110_L_we0;
    end else begin
        L_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        UL_inv_address0 = grp_final_perm_fu_139_UL_inv_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        UL_inv_address0 = grp_matrix_mult_fu_132_A_inv_address0;
    end else begin
        UL_inv_address0 = 'bx;
    end
end

always @ (*) begin
    if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        UL_inv_ce0 = grp_final_perm_fu_139_UL_inv_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        UL_inv_ce0 = grp_matrix_mult_fu_132_A_inv_ce0;
    end else begin
        UL_inv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        UL_inv_we0 = grp_matrix_mult_fu_132_A_inv_we0;
    end else begin
        UL_inv_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        U_address0 = grp_Upper_inv_fu_120_U_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        U_address0 = grp_lup_fu_110_U_address0;
    end else begin
        U_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        U_ce0 = grp_Upper_inv_fu_120_U_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        U_ce0 = grp_lup_fu_110_U_ce0;
    end else begin
        U_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        U_inv_address0 = grp_matrix_mult_fu_132_U_inv_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        U_inv_address0 = grp_Upper_inv_fu_120_U_inv_address0;
    end else begin
        U_inv_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        U_inv_ce0 = grp_matrix_mult_fu_132_U_inv_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        U_inv_ce0 = grp_Upper_inv_fu_120_U_inv_ce0;
    end else begin
        U_inv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        U_inv_we0 = grp_Upper_inv_fu_120_U_inv_we0;
    end else begin
        U_inv_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        U_we0 = grp_lup_fu_110_U_we0;
    end else begin
        U_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((singular_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_phi_mux_p_0_phi_fu_80_p4 = 1'd0;
    end else begin
        ap_phi_mux_p_0_phi_fu_80_p4 = p_0_reg_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_lup_fu_110_ap_done == 1'b1) & (singular_fu_149_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((grp_lup_fu_110_ap_done == 1'b1) & (singular_fu_149_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_matrix_mult_fu_132_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((icmp_ln244_fu_165_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln246_fu_199_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = grp_lup_fu_110_A_address0;

assign A_address1 = grp_lup_fu_110_A_address1;

assign A_ce0 = grp_lup_fu_110_A_ce0;

assign A_ce1 = grp_lup_fu_110_A_ce1;

assign A_d1 = grp_lup_fu_110_A_d1;

assign A_we1 = grp_lup_fu_110_A_we1;

assign add_ln247_fu_215_p2 = (sub_ln247_reg_252 + zext_ln247_2_fu_211_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state4_on_subcall_done = ((grp_Lower_inv_fu_126_ap_done == 1'b0) | (grp_Upper_inv_fu_120_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state8_on_subcall_done = ((singular_reg_225 == 1'd0) & (grp_final_perm_fu_139_ap_done == 1'b0));
end

assign ap_return = ap_phi_mux_p_0_phi_fu_80_p4;

assign grp_Lower_inv_fu_126_ap_start = grp_Lower_inv_fu_126_ap_start_reg;

assign grp_Upper_inv_fu_120_ap_start = grp_Upper_inv_fu_120_ap_start_reg;

assign grp_final_perm_fu_139_ap_start = grp_final_perm_fu_139_ap_start_reg;

assign grp_lup_fu_110_ap_start = grp_lup_fu_110_ap_start_reg;

assign grp_matrix_mult_fu_132_ap_start = grp_matrix_mult_fu_132_ap_start_reg;

assign i_fu_171_p2 = (i_0_reg_88 + 2'd1);

assign icmp_ln244_fu_165_p2 = ((i_0_reg_88 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln246_fu_199_p2 = ((j_0_reg_99 == 2'd3) ? 1'b1 : 1'b0);

assign j_fu_205_p2 = (j_0_reg_99 + 2'd1);

assign sext_ln247_fu_220_p1 = $signed(add_ln247_fu_215_p2);

assign singular_fu_149_p1 = grp_lup_fu_110_ap_return_0;

assign sub_ln247_fu_193_p2 = (zext_ln247_1_fu_189_p1 - zext_ln247_fu_177_p1);

assign tmp_fu_181_p3 = {{i_0_reg_88}, {2'd0}};

assign zext_ln247_1_fu_189_p1 = tmp_fu_181_p3;

assign zext_ln247_2_fu_211_p1 = j_0_reg_99;

assign zext_ln247_fu_177_p1 = i_0_reg_88;

endmodule //inverse_top
