// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Lower_inv (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        L_address0,
        L_ce0,
        L_q0,
        L_inv_address0,
        L_inv_ce0,
        L_inv_we0,
        L_inv_d0,
        L_inv_q0
);

parameter    ap_ST_fsm_state1 = 29'd1;
parameter    ap_ST_fsm_state2 = 29'd2;
parameter    ap_ST_fsm_state3 = 29'd4;
parameter    ap_ST_fsm_state4 = 29'd8;
parameter    ap_ST_fsm_state5 = 29'd16;
parameter    ap_ST_fsm_state6 = 29'd32;
parameter    ap_ST_fsm_state7 = 29'd64;
parameter    ap_ST_fsm_state8 = 29'd128;
parameter    ap_ST_fsm_state9 = 29'd256;
parameter    ap_ST_fsm_state10 = 29'd512;
parameter    ap_ST_fsm_state11 = 29'd1024;
parameter    ap_ST_fsm_state12 = 29'd2048;
parameter    ap_ST_fsm_state13 = 29'd4096;
parameter    ap_ST_fsm_state14 = 29'd8192;
parameter    ap_ST_fsm_state15 = 29'd16384;
parameter    ap_ST_fsm_state16 = 29'd32768;
parameter    ap_ST_fsm_state17 = 29'd65536;
parameter    ap_ST_fsm_state18 = 29'd131072;
parameter    ap_ST_fsm_state19 = 29'd262144;
parameter    ap_ST_fsm_state20 = 29'd524288;
parameter    ap_ST_fsm_state21 = 29'd1048576;
parameter    ap_ST_fsm_state22 = 29'd2097152;
parameter    ap_ST_fsm_state23 = 29'd4194304;
parameter    ap_ST_fsm_state24 = 29'd8388608;
parameter    ap_ST_fsm_state25 = 29'd16777216;
parameter    ap_ST_fsm_state26 = 29'd33554432;
parameter    ap_ST_fsm_state27 = 29'd67108864;
parameter    ap_ST_fsm_state28 = 29'd134217728;
parameter    ap_ST_fsm_state29 = 29'd268435456;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] L_address0;
output   L_ce0;
input  [31:0] L_q0;
output  [3:0] L_inv_address0;
output   L_inv_ce0;
output   L_inv_we0;
output  [31:0] L_inv_d0;
input  [31:0] L_inv_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] L_address0;
reg L_ce0;
reg[3:0] L_inv_address0;
reg L_inv_ce0;
reg L_inv_we0;
reg[31:0] L_inv_d0;

(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] zext_ln140_fu_164_p1;
reg   [31:0] zext_ln140_reg_332;
wire    ap_CS_fsm_state2;
wire   [1:0] i_fu_174_p2;
reg   [1:0] i_reg_340;
wire   [4:0] sub_ln148_fu_202_p2;
reg   [4:0] sub_ln148_reg_345;
wire   [0:0] icmp_ln140_fu_168_p2;
reg   [3:0] L_addr_reg_352;
reg   [3:0] L_inv_addr_1_reg_357;
wire   [31:0] zext_ln152_fu_208_p1;
wire    ap_CS_fsm_state3;
wire   [1:0] j_fu_218_p2;
reg   [1:0] j_reg_370;
wire   [0:0] icmp_ln145_fu_224_p2;
reg   [0:0] icmp_ln145_reg_375;
wire   [0:0] icmp_ln142_fu_212_p2;
wire   [0:0] icmp_ln147_fu_230_p2;
reg   [0:0] icmp_ln147_reg_379;
wire   [4:0] zext_ln159_fu_236_p1;
reg   [4:0] zext_ln159_reg_383;
reg   [3:0] L_inv_addr_3_reg_388;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln152_fu_264_p2;
wire   [31:0] k_5_fu_311_p2;
reg   [31:0] k_5_reg_406;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_151_p2;
reg   [31:0] tmp_s_reg_421;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_146_p2;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
reg   [1:0] i_0_reg_102;
reg   [1:0] k_reg_114;
wire    ap_CS_fsm_state29;
reg   [31:0] sum_0_reg_125;
reg   [31:0] k_0_reg_137;
wire   [63:0] zext_ln148_fu_192_p1;
wire  signed [63:0] sext_ln159_fu_245_p1;
wire  signed [63:0] sext_ln146_fu_259_p1;
wire  signed [63:0] sext_ln157_fu_278_p1;
wire  signed [63:0] sext_ln157_1_fu_306_p1;
wire   [31:0] bitcast_ln159_1_fu_327_p1;
wire   [31:0] grp_fu_157_p2;
wire    ap_CS_fsm_state9;
wire   [3:0] tmp_37_fu_184_p3;
wire   [4:0] zext_ln148_2_fu_198_p1;
wire   [4:0] zext_ln148_1_fu_180_p1;
wire   [4:0] add_ln159_fu_240_p2;
wire   [4:0] zext_ln146_fu_250_p1;
wire   [4:0] add_ln146_fu_254_p2;
wire   [4:0] trunc_ln157_fu_269_p1;
wire   [4:0] add_ln157_fu_273_p2;
wire   [2:0] trunc_ln157_1_fu_283_p1;
wire   [4:0] sext_ln157_1_cast_fu_287_p3;
wire   [4:0] sub_ln157_fu_295_p2;
wire   [4:0] add_ln157_1_fu_301_p2;
wire   [31:0] bitcast_ln159_fu_317_p1;
wire   [31:0] xor_ln159_fu_321_p2;
reg   [28:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 29'd1;
end

inverse_top_fadd_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inverse_top_fadd_hbi_U19(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_0_reg_125),
    .din1(tmp_s_reg_421),
    .ce(1'b1),
    .dout(grp_fu_146_p2)
);

inverse_top_fmul_cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inverse_top_fmul_cud_U20(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(L_q0),
    .din1(L_inv_q0),
    .ce(1'b1),
    .dout(grp_fu_151_p2)
);

inverse_top_fdiv_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
inverse_top_fdiv_dEe_U21(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(32'd1065353216),
    .din1(L_q0),
    .ce(1'b1),
    .dout(grp_fu_157_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln142_fu_212_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_102 <= i_reg_340;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_102 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln147_fu_230_p2 == 1'd0) & (icmp_ln142_fu_212_p2 == 1'd0) & (icmp_ln145_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_0_reg_137 <= zext_ln152_fu_208_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        k_0_reg_137 <= k_5_reg_406;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        k_reg_114 <= j_reg_370;
    end else if (((icmp_ln140_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_reg_114 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln147_fu_230_p2 == 1'd0) & (icmp_ln142_fu_212_p2 == 1'd0) & (icmp_ln145_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_0_reg_125 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_0_reg_125 <= grp_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln140_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        L_addr_reg_352[3 : 2] <= zext_ln148_fu_192_p1[3 : 2];
        L_inv_addr_1_reg_357[3 : 2] <= zext_ln148_fu_192_p1[3 : 2];
        sub_ln148_reg_345 <= sub_ln148_fu_202_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln147_fu_230_p2 == 1'd0) & (icmp_ln142_fu_212_p2 == 1'd0) & (icmp_ln145_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        L_inv_addr_3_reg_388 <= sext_ln159_fu_245_p1;
        zext_ln159_reg_383[1 : 0] <= zext_ln159_fu_236_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_340 <= i_fu_174_p2;
        zext_ln140_reg_332[1 : 0] <= zext_ln140_fu_164_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln142_fu_212_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln145_reg_375 <= icmp_ln145_fu_224_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln142_fu_212_p2 == 1'd0) & (icmp_ln145_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln147_reg_379 <= icmp_ln147_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_370 <= j_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln152_fu_264_p2 == 1'd1))) begin
        k_5_reg_406 <= k_5_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_s_reg_421 <= grp_fu_151_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        L_address0 = sext_ln157_fu_278_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        L_address0 = L_addr_reg_352;
    end else begin
        L_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        L_ce0 = 1'b1;
    end else begin
        L_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        L_inv_address0 = L_inv_addr_1_reg_357;
    end else if (((icmp_ln152_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        L_inv_address0 = L_inv_addr_3_reg_388;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln152_fu_264_p2 == 1'd1))) begin
        L_inv_address0 = sext_ln157_1_fu_306_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        L_inv_address0 = sext_ln146_fu_259_p1;
    end else begin
        L_inv_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state29) | ((icmp_ln152_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln152_fu_264_p2 == 1'd1)))) begin
        L_inv_ce0 = 1'b1;
    end else begin
        L_inv_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        L_inv_d0 = grp_fu_157_p2;
    end else if (((icmp_ln152_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        L_inv_d0 = bitcast_ln159_1_fu_327_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        L_inv_d0 = 32'd0;
    end else begin
        L_inv_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln145_fu_224_p2 == 1'd1) & (icmp_ln142_fu_212_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln147_reg_379 == 1'd1) & (icmp_ln145_reg_375 == 1'd0) & (1'b1 == ap_CS_fsm_state29)) | ((icmp_ln152_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        L_inv_we0 = 1'b1;
    end else begin
        L_inv_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln140_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln140_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((icmp_ln140_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln142_fu_212_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln145_fu_224_p2 == 1'd1) & (icmp_ln142_fu_212_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else if (((icmp_ln147_fu_230_p2 == 1'd0) & (icmp_ln142_fu_212_p2 == 1'd0) & (icmp_ln145_fu_224_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln152_fu_264_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
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
            ap_NS_fsm = ap_ST_fsm_state4;
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
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln146_fu_254_p2 = (sub_ln148_reg_345 + zext_ln146_fu_250_p1);

assign add_ln157_1_fu_301_p2 = (zext_ln159_reg_383 + sub_ln157_fu_295_p2);

assign add_ln157_fu_273_p2 = (trunc_ln157_fu_269_p1 + sub_ln148_reg_345);

assign add_ln159_fu_240_p2 = (sub_ln148_reg_345 + zext_ln159_fu_236_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bitcast_ln159_1_fu_327_p1 = xor_ln159_fu_321_p2;

assign bitcast_ln159_fu_317_p1 = sum_0_reg_125;

assign i_fu_174_p2 = (i_0_reg_102 + 2'd1);

assign icmp_ln140_fu_168_p2 = ((i_0_reg_102 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln142_fu_212_p2 = ((k_reg_114 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln145_fu_224_p2 = ((i_0_reg_102 < k_reg_114) ? 1'b1 : 1'b0);

assign icmp_ln147_fu_230_p2 = ((i_0_reg_102 == k_reg_114) ? 1'b1 : 1'b0);

assign icmp_ln152_fu_264_p2 = (($signed(k_0_reg_137) < $signed(zext_ln140_reg_332)) ? 1'b1 : 1'b0);

assign j_fu_218_p2 = (k_reg_114 + 2'd1);

assign k_5_fu_311_p2 = (32'd1 + k_0_reg_137);

assign sext_ln146_fu_259_p1 = $signed(add_ln146_fu_254_p2);

assign sext_ln157_1_cast_fu_287_p3 = {{trunc_ln157_1_fu_283_p1}, {2'd0}};

assign sext_ln157_1_fu_306_p1 = $signed(add_ln157_1_fu_301_p2);

assign sext_ln157_fu_278_p1 = $signed(add_ln157_fu_273_p2);

assign sext_ln159_fu_245_p1 = $signed(add_ln159_fu_240_p2);

assign sub_ln148_fu_202_p2 = (zext_ln148_2_fu_198_p1 - zext_ln148_1_fu_180_p1);

assign sub_ln157_fu_295_p2 = (sext_ln157_1_cast_fu_287_p3 - trunc_ln157_fu_269_p1);

assign tmp_37_fu_184_p3 = {{i_0_reg_102}, {2'd0}};

assign trunc_ln157_1_fu_283_p1 = k_0_reg_137[2:0];

assign trunc_ln157_fu_269_p1 = k_0_reg_137[4:0];

assign xor_ln159_fu_321_p2 = (bitcast_ln159_fu_317_p1 ^ 32'd2147483648);

assign zext_ln140_fu_164_p1 = i_0_reg_102;

assign zext_ln146_fu_250_p1 = k_reg_114;

assign zext_ln148_1_fu_180_p1 = i_0_reg_102;

assign zext_ln148_2_fu_198_p1 = tmp_37_fu_184_p3;

assign zext_ln148_fu_192_p1 = tmp_37_fu_184_p3;

assign zext_ln152_fu_208_p1 = k_reg_114;

assign zext_ln159_fu_236_p1 = k_reg_114;

always @ (posedge ap_clk) begin
    zext_ln140_reg_332[31:2] <= 30'b000000000000000000000000000000;
    L_addr_reg_352[1:0] <= 2'b00;
    L_inv_addr_1_reg_357[1:0] <= 2'b00;
    zext_ln159_reg_383[4:2] <= 3'b000;
end

endmodule //Lower_inv