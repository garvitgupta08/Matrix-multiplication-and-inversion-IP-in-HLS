// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Upper_inv (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        U_address0,
        U_ce0,
        U_q0,
        U_inv_address0,
        U_inv_ce0,
        U_inv_we0,
        U_inv_d0,
        U_inv_q0
);

parameter    ap_ST_fsm_state1 = 48'd1;
parameter    ap_ST_fsm_state2 = 48'd2;
parameter    ap_ST_fsm_state3 = 48'd4;
parameter    ap_ST_fsm_state4 = 48'd8;
parameter    ap_ST_fsm_state5 = 48'd16;
parameter    ap_ST_fsm_state6 = 48'd32;
parameter    ap_ST_fsm_state7 = 48'd64;
parameter    ap_ST_fsm_state8 = 48'd128;
parameter    ap_ST_fsm_state9 = 48'd256;
parameter    ap_ST_fsm_state10 = 48'd512;
parameter    ap_ST_fsm_state11 = 48'd1024;
parameter    ap_ST_fsm_state12 = 48'd2048;
parameter    ap_ST_fsm_state13 = 48'd4096;
parameter    ap_ST_fsm_state14 = 48'd8192;
parameter    ap_ST_fsm_state15 = 48'd16384;
parameter    ap_ST_fsm_state16 = 48'd32768;
parameter    ap_ST_fsm_state17 = 48'd65536;
parameter    ap_ST_fsm_state18 = 48'd131072;
parameter    ap_ST_fsm_state19 = 48'd262144;
parameter    ap_ST_fsm_state20 = 48'd524288;
parameter    ap_ST_fsm_state21 = 48'd1048576;
parameter    ap_ST_fsm_state22 = 48'd2097152;
parameter    ap_ST_fsm_state23 = 48'd4194304;
parameter    ap_ST_fsm_state24 = 48'd8388608;
parameter    ap_ST_fsm_state25 = 48'd16777216;
parameter    ap_ST_fsm_state26 = 48'd33554432;
parameter    ap_ST_fsm_state27 = 48'd67108864;
parameter    ap_ST_fsm_state28 = 48'd134217728;
parameter    ap_ST_fsm_state29 = 48'd268435456;
parameter    ap_ST_fsm_state30 = 48'd536870912;
parameter    ap_ST_fsm_state31 = 48'd1073741824;
parameter    ap_ST_fsm_state32 = 48'd2147483648;
parameter    ap_ST_fsm_state33 = 48'd4294967296;
parameter    ap_ST_fsm_state34 = 48'd8589934592;
parameter    ap_ST_fsm_state35 = 48'd17179869184;
parameter    ap_ST_fsm_state36 = 48'd34359738368;
parameter    ap_ST_fsm_state37 = 48'd68719476736;
parameter    ap_ST_fsm_state38 = 48'd137438953472;
parameter    ap_ST_fsm_state39 = 48'd274877906944;
parameter    ap_ST_fsm_state40 = 48'd549755813888;
parameter    ap_ST_fsm_state41 = 48'd1099511627776;
parameter    ap_ST_fsm_state42 = 48'd2199023255552;
parameter    ap_ST_fsm_state43 = 48'd4398046511104;
parameter    ap_ST_fsm_state44 = 48'd8796093022208;
parameter    ap_ST_fsm_state45 = 48'd17592186044416;
parameter    ap_ST_fsm_state46 = 48'd35184372088832;
parameter    ap_ST_fsm_state47 = 48'd70368744177664;
parameter    ap_ST_fsm_state48 = 48'd140737488355328;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] U_address0;
output   U_ce0;
input  [31:0] U_q0;
output  [3:0] U_inv_address0;
output   U_inv_ce0;
output   U_inv_we0;
output  [31:0] U_inv_d0;
input  [31:0] U_inv_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] U_address0;
reg U_ce0;
reg[3:0] U_inv_address0;
reg U_inv_ce0;
reg U_inv_we0;
reg[31:0] U_inv_d0;

(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state33;
wire   [1:0] i_4_fu_228_p2;
reg   [1:0] i_4_reg_459;
wire    ap_CS_fsm_state2;
wire   [4:0] sub_ln178_fu_250_p2;
reg   [4:0] sub_ln178_reg_464;
wire   [0:0] icmp_ln174_fu_222_p2;
wire   [1:0] j_fu_262_p2;
wire    ap_CS_fsm_state3;
wire   [1:0] i_fu_288_p2;
reg   [1:0] i_reg_480;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln184_fu_302_p1;
reg   [63:0] zext_ln184_reg_485;
wire   [0:0] icmp_ln182_fu_282_p2;
wire   [31:0] zext_ln187_fu_307_p1;
reg   [31:0] zext_ln187_reg_495;
wire    ap_CS_fsm_state21;
wire   [1:0] i_5_fu_317_p2;
reg   [1:0] i_5_reg_503;
wire   [4:0] zext_ln198_1_fu_323_p1;
reg   [4:0] zext_ln198_1_reg_508;
wire   [0:0] icmp_ln187_fu_311_p2;
reg   [3:0] U_addr_1_reg_514;
wire   [31:0] zext_ln189_fu_340_p1;
wire    ap_CS_fsm_state22;
wire   [1:0] j_5_fu_350_p2;
reg   [1:0] j_5_reg_527;
wire   [4:0] sub_ln196_fu_372_p2;
reg   [4:0] sub_ln196_reg_532;
wire   [0:0] icmp_ln189_fu_344_p2;
reg   [3:0] U_inv_addr_3_reg_537;
wire    ap_CS_fsm_state23;
wire   [0:0] icmp_ln193_fu_388_p2;
wire   [31:0] k_4_fu_435_p2;
reg   [31:0] k_4_reg_555;
wire   [31:0] grp_fu_203_p2;
reg   [31:0] tmp_s_reg_565;
wire    ap_CS_fsm_state27;
wire   [31:0] grp_fu_198_p2;
wire    ap_CS_fsm_state32;
wire   [31:0] bitcast_ln198_1_fu_451_p1;
reg   [1:0] i_0_reg_121;
wire   [0:0] icmp_ln176_fu_256_p2;
reg   [1:0] j_0_reg_132;
reg   [1:0] i1_0_reg_143;
wire    ap_CS_fsm_state20;
reg   [1:0] indvars_iv_reg_154;
reg   [1:0] k_reg_166;
wire    ap_CS_fsm_state48;
reg   [31:0] sum_0_reg_177;
reg   [31:0] k_0_reg_189;
wire  signed [63:0] sext_ln178_fu_277_p1;
wire   [63:0] zext_ln198_fu_335_p1;
wire  signed [63:0] sext_ln198_fu_383_p1;
wire  signed [63:0] sext_ln196_fu_420_p1;
wire  signed [63:0] sext_ln196_1_fu_430_p1;
wire   [31:0] grp_fu_209_p2;
wire    ap_CS_fsm_state28;
reg   [31:0] grp_fu_209_p0;
wire   [3:0] tmp_33_fu_238_p3;
wire   [4:0] zext_ln178_1_fu_246_p1;
wire   [4:0] zext_ln178_fu_234_p1;
wire   [4:0] zext_ln178_2_fu_268_p1;
wire   [4:0] add_ln178_fu_272_p2;
wire   [3:0] tmp_34_fu_294_p3;
wire   [3:0] tmp_35_fu_327_p3;
wire   [3:0] tmp_36_fu_360_p3;
wire   [4:0] zext_ln196_1_fu_368_p1;
wire   [4:0] zext_ln196_fu_356_p1;
wire   [4:0] add_ln198_fu_378_p2;
wire   [2:0] trunc_ln196_1_fu_397_p1;
wire   [4:0] sext_ln196_1_cast_fu_401_p3;
wire   [4:0] trunc_ln196_fu_393_p1;
wire   [4:0] sub_ln196_1_fu_409_p2;
wire   [4:0] add_ln196_fu_415_p2;
wire   [4:0] add_ln196_1_fu_425_p2;
wire   [31:0] bitcast_ln198_fu_441_p1;
wire   [31:0] xor_ln198_fu_445_p2;
reg   [47:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 48'd1;
end

inverse_top_fadd_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inverse_top_fadd_hbi_U25(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_0_reg_177),
    .din1(tmp_s_reg_565),
    .ce(1'b1),
    .dout(grp_fu_198_p2)
);

inverse_top_fmul_cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inverse_top_fmul_cud_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(U_q0),
    .din1(U_inv_q0),
    .ce(1'b1),
    .dout(grp_fu_203_p2)
);

inverse_top_fdiv_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inverse_top_fdiv_dEe_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_209_p0),
    .din1(U_q0),
    .ce(1'b1),
    .dout(grp_fu_209_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln174_fu_222_p2 == 1'd1))) begin
        i1_0_reg_143 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        i1_0_reg_143 <= i_reg_480;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_256_p2 == 1'd1))) begin
        i_0_reg_121 <= i_4_reg_459;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_121 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_282_p2 == 1'd1))) begin
        indvars_iv_reg_154 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln189_fu_344_p2 == 1'd1))) begin
        indvars_iv_reg_154 <= i_5_reg_503;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_256_p2 == 1'd0))) begin
        j_0_reg_132 <= j_fu_262_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln174_fu_222_p2 == 1'd0))) begin
        j_0_reg_132 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        k_0_reg_189 <= k_4_reg_555;
    end else if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln189_fu_344_p2 == 1'd0))) begin
        k_0_reg_189 <= zext_ln189_fu_340_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        k_reg_166 <= j_5_reg_527;
    end else if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln187_fu_311_p2 == 1'd0))) begin
        k_reg_166 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        sum_0_reg_177 <= grp_fu_198_p2;
    end else if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln189_fu_344_p2 == 1'd0))) begin
        sum_0_reg_177 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln187_fu_311_p2 == 1'd0))) begin
        U_addr_1_reg_514[3 : 2] <= zext_ln198_fu_335_p1[3 : 2];
        zext_ln198_1_reg_508[1 : 0] <= zext_ln198_1_fu_323_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln189_fu_344_p2 == 1'd0))) begin
        U_inv_addr_3_reg_537 <= sext_ln198_fu_383_p1;
        sub_ln196_reg_532 <= sub_ln196_fu_372_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_4_reg_459 <= i_4_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i_5_reg_503 <= i_5_fu_317_p2;
        zext_ln187_reg_495[1 : 0] <= zext_ln187_fu_307_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_reg_480 <= i_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        j_5_reg_527 <= j_5_fu_350_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) & (icmp_ln193_fu_388_p2 == 1'd1))) begin
        k_4_reg_555 <= k_4_fu_435_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln174_fu_222_p2 == 1'd0))) begin
        sub_ln178_reg_464 <= sub_ln178_fu_250_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        tmp_s_reg_565 <= grp_fu_203_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_282_p2 == 1'd0))) begin
        zext_ln184_reg_485[3 : 2] <= zext_ln184_fu_302_p1[3 : 2];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) & (icmp_ln193_fu_388_p2 == 1'd0))) begin
        U_address0 = U_addr_1_reg_514;
    end else if (((1'b1 == ap_CS_fsm_state23) & (icmp_ln193_fu_388_p2 == 1'd1))) begin
        U_address0 = sext_ln196_fu_420_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        U_address0 = zext_ln184_fu_302_p1;
    end else begin
        U_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state23) & (icmp_ln193_fu_388_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state23) & (icmp_ln193_fu_388_p2 == 1'd1)))) begin
        U_ce0 = 1'b1;
    end else begin
        U_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        U_inv_address0 = U_inv_addr_3_reg_537;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        U_inv_address0 = sext_ln196_1_fu_430_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        U_inv_address0 = zext_ln184_reg_485;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        U_inv_address0 = sext_ln178_fu_277_p1;
    end else begin
        U_inv_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state3))) begin
        U_inv_ce0 = 1'b1;
    end else begin
        U_inv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state20))) begin
        U_inv_d0 = grp_fu_209_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        U_inv_d0 = 32'd0;
    end else begin
        U_inv_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state20) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_256_p2 == 1'd0)))) begin
        U_inv_we0 = 1'b1;
    end else begin
        U_inv_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln187_fu_311_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln187_fu_311_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_209_p0 = bitcast_ln198_1_fu_451_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_209_p0 = 32'd1065353216;
    end else begin
        grp_fu_209_p0 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln174_fu_222_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_256_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_282_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state21 : begin
            if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln187_fu_311_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state22 : begin
            if (((1'b1 == ap_CS_fsm_state22) & (icmp_ln189_fu_344_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == ap_CS_fsm_state23) & (icmp_ln193_fu_388_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln178_fu_272_p2 = (sub_ln178_reg_464 + zext_ln178_2_fu_268_p1);

assign add_ln196_1_fu_425_p2 = (trunc_ln196_fu_393_p1 + sub_ln196_reg_532);

assign add_ln196_fu_415_p2 = (zext_ln198_1_reg_508 + sub_ln196_1_fu_409_p2);

assign add_ln198_fu_378_p2 = (sub_ln196_fu_372_p2 + zext_ln198_1_reg_508);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign bitcast_ln198_1_fu_451_p1 = xor_ln198_fu_445_p2;

assign bitcast_ln198_fu_441_p1 = sum_0_reg_177;

assign i_4_fu_228_p2 = (i_0_reg_121 + 2'd1);

assign i_5_fu_317_p2 = (indvars_iv_reg_154 + 2'd1);

assign i_fu_288_p2 = (i1_0_reg_143 + 2'd1);

assign icmp_ln174_fu_222_p2 = ((i_0_reg_121 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln176_fu_256_p2 = ((j_0_reg_132 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln182_fu_282_p2 = ((i1_0_reg_143 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln187_fu_311_p2 = ((indvars_iv_reg_154 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln189_fu_344_p2 = ((k_reg_166 == indvars_iv_reg_154) ? 1'b1 : 1'b0);

assign icmp_ln193_fu_388_p2 = (($signed(k_0_reg_189) < $signed(zext_ln187_reg_495)) ? 1'b1 : 1'b0);

assign j_5_fu_350_p2 = (k_reg_166 + 2'd1);

assign j_fu_262_p2 = (j_0_reg_132 + 2'd1);

assign k_4_fu_435_p2 = (32'd1 + k_0_reg_189);

assign sext_ln178_fu_277_p1 = $signed(add_ln178_fu_272_p2);

assign sext_ln196_1_cast_fu_401_p3 = {{trunc_ln196_1_fu_397_p1}, {2'd0}};

assign sext_ln196_1_fu_430_p1 = $signed(add_ln196_1_fu_425_p2);

assign sext_ln196_fu_420_p1 = $signed(add_ln196_fu_415_p2);

assign sext_ln198_fu_383_p1 = $signed(add_ln198_fu_378_p2);

assign sub_ln178_fu_250_p2 = (zext_ln178_1_fu_246_p1 - zext_ln178_fu_234_p1);

assign sub_ln196_1_fu_409_p2 = (sext_ln196_1_cast_fu_401_p3 - trunc_ln196_fu_393_p1);

assign sub_ln196_fu_372_p2 = (zext_ln196_1_fu_368_p1 - zext_ln196_fu_356_p1);

assign tmp_33_fu_238_p3 = {{i_0_reg_121}, {2'd0}};

assign tmp_34_fu_294_p3 = {{i1_0_reg_143}, {2'd0}};

assign tmp_35_fu_327_p3 = {{indvars_iv_reg_154}, {2'd0}};

assign tmp_36_fu_360_p3 = {{k_reg_166}, {2'd0}};

assign trunc_ln196_1_fu_397_p1 = k_0_reg_189[2:0];

assign trunc_ln196_fu_393_p1 = k_0_reg_189[4:0];

assign xor_ln198_fu_445_p2 = (bitcast_ln198_fu_441_p1 ^ 32'd2147483648);

assign zext_ln178_1_fu_246_p1 = tmp_33_fu_238_p3;

assign zext_ln178_2_fu_268_p1 = j_0_reg_132;

assign zext_ln178_fu_234_p1 = i_0_reg_121;

assign zext_ln184_fu_302_p1 = tmp_34_fu_294_p3;

assign zext_ln187_fu_307_p1 = indvars_iv_reg_154;

assign zext_ln189_fu_340_p1 = k_reg_166;

assign zext_ln196_1_fu_368_p1 = tmp_36_fu_360_p3;

assign zext_ln196_fu_356_p1 = k_reg_166;

assign zext_ln198_1_fu_323_p1 = indvars_iv_reg_154;

assign zext_ln198_fu_335_p1 = tmp_35_fu_327_p3;

always @ (posedge ap_clk) begin
    zext_ln184_reg_485[1:0] <= 2'b00;
    zext_ln184_reg_485[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln187_reg_495[31:2] <= 30'b000000000000000000000000000000;
    zext_ln198_1_reg_508[4:2] <= 3'b000;
    U_addr_1_reg_514[1:0] <= 2'b00;
end

endmodule //Upper_inv
