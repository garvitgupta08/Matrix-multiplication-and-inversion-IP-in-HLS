// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrixmult_HH_
#define _matrixmult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrixmult_fadd_3bkb.h"
#include "matrixmult_fmul_3cud.h"

namespace ap_rtl {

struct matrixmult : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > A_0_address0;
    sc_out< sc_logic > A_0_ce0;
    sc_in< sc_lv<32> > A_0_q0;
    sc_out< sc_lv<3> > A_0_address1;
    sc_out< sc_logic > A_0_ce1;
    sc_in< sc_lv<32> > A_0_q1;
    sc_out< sc_lv<3> > A_1_address0;
    sc_out< sc_logic > A_1_ce0;
    sc_in< sc_lv<32> > A_1_q0;
    sc_out< sc_lv<3> > A_1_address1;
    sc_out< sc_logic > A_1_ce1;
    sc_in< sc_lv<32> > A_1_q1;
    sc_out< sc_lv<3> > B_0_address0;
    sc_out< sc_logic > B_0_ce0;
    sc_in< sc_lv<32> > B_0_q0;
    sc_out< sc_lv<3> > B_0_address1;
    sc_out< sc_logic > B_0_ce1;
    sc_in< sc_lv<32> > B_0_q1;
    sc_out< sc_lv<3> > B_1_address0;
    sc_out< sc_logic > B_1_ce0;
    sc_in< sc_lv<32> > B_1_q0;
    sc_out< sc_lv<3> > B_1_address1;
    sc_out< sc_logic > B_1_ce1;
    sc_in< sc_lv<32> > B_1_q1;
    sc_out< sc_lv<4> > res_address0;
    sc_out< sc_logic > res_ce0;
    sc_out< sc_logic > res_we0;
    sc_out< sc_lv<32> > res_d0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    matrixmult(sc_module_name name);
    SC_HAS_PROCESS(matrixmult);

    ~matrixmult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmult_fadd_3bkb<1,5,32,32,32>* matrixmult_fadd_3bkb_U1;
    matrixmult_fadd_3bkb<1,5,32,32,32>* matrixmult_fadd_3bkb_U2;
    matrixmult_fadd_3bkb<1,5,32,32,32>* matrixmult_fadd_3bkb_U3;
    matrixmult_fadd_3bkb<1,5,32,32,32>* matrixmult_fadd_3bkb_U4;
    matrixmult_fmul_3cud<1,4,32,32,32>* matrixmult_fmul_3cud_U5;
    matrixmult_fmul_3cud<1,4,32,32,32>* matrixmult_fmul_3cud_U6;
    matrixmult_fmul_3cud<1,4,32,32,32>* matrixmult_fmul_3cud_U7;
    matrixmult_fmul_3cud<1,4,32,32,32>* matrixmult_fmul_3cud_U8;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > indvar_flatten_reg_181;
    sc_signal< sc_lv<3> > i_0_reg_192;
    sc_signal< sc_lv<3> > j_0_reg_203;
    sc_signal< sc_lv<1> > icmp_ln7_fu_255_p2;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter16;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter17;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter18;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter19;
    sc_signal< bool > ap_block_state22_pp0_stage0_iter20;
    sc_signal< bool > ap_block_state23_pp0_stage0_iter21;
    sc_signal< bool > ap_block_state24_pp0_stage0_iter22;
    sc_signal< bool > ap_block_state25_pp0_stage0_iter23;
    sc_signal< bool > ap_block_state26_pp0_stage0_iter24;
    sc_signal< bool > ap_block_state27_pp0_stage0_iter25;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter8_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter10_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter11_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter12_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter13_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter14_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter15_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter16_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter17_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter18_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter19_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter20_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter21_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter22_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter23_reg;
    sc_signal< sc_lv<1> > icmp_ln7_reg_372_pp0_iter24_reg;
    sc_signal< sc_lv<5> > add_ln7_fu_261_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<3> > select_ln14_fu_279_p3;
    sc_signal< sc_lv<3> > select_ln14_reg_381;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter1_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter2_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter3_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter4_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter5_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter6_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter7_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter8_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter9_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter10_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter11_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter12_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter13_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter14_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter15_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter16_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter17_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter18_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter19_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter20_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter21_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter22_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter23_reg;
    sc_signal< sc_lv<3> > select_ln14_reg_381_pp0_iter24_reg;
    sc_signal< sc_lv<3> > select_ln14_1_fu_287_p3;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter1_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter2_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter3_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter4_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter5_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter6_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter7_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter8_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter9_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter10_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter11_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter12_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter13_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter14_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter15_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter16_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter17_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter18_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter19_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter20_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter21_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter22_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter23_reg;
    sc_signal< sc_lv<3> > select_ln14_1_reg_387_pp0_iter24_reg;
    sc_signal< sc_lv<4> > tmp_4_fu_295_p3;
    sc_signal< sc_lv<4> > tmp_4_reg_393;
    sc_signal< sc_lv<4> > tmp_4_reg_393_pp0_iter1_reg;
    sc_signal< sc_lv<4> > tmp_4_reg_393_pp0_iter2_reg;
    sc_signal< sc_lv<4> > tmp_4_reg_393_pp0_iter3_reg;
    sc_signal< sc_lv<4> > tmp_4_reg_393_pp0_iter4_reg;
    sc_signal< sc_lv<64> > zext_ln14_fu_303_p1;
    sc_signal< sc_lv<64> > zext_ln14_reg_398;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter2_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter3_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter4_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter5_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter6_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter7_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter8_reg;
    sc_signal< sc_lv<64> > zext_ln14_reg_398_pp0_iter9_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_fu_308_p1;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter1_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter2_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter3_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter4_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter5_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter6_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter7_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter8_reg;
    sc_signal< sc_lv<64> > zext_ln14_1_reg_408_pp0_iter9_reg;
    sc_signal< sc_lv<3> > j_fu_313_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<32> > grp_fu_231_p2;
    sc_signal< sc_lv<32> > tmp1_reg_433;
    sc_signal< sc_lv<64> > tmp_5_fu_324_p3;
    sc_signal< sc_lv<64> > tmp_5_reg_438;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter6_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter7_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter8_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter9_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter10_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter11_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter12_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter13_reg;
    sc_signal< sc_lv<64> > tmp_5_reg_438_pp0_iter14_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_fu_342_p1;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter6_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter7_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter8_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter9_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter10_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter11_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter12_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter13_reg;
    sc_signal< sc_lv<64> > zext_ln14_4_reg_448_pp0_iter14_reg;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_lv<32> > grp_fu_214_p2;
    sc_signal< sc_lv<32> > sum_s_reg_468;
    sc_signal< sc_lv<32> > grp_fu_237_p2;
    sc_signal< sc_lv<32> > tmp_1_reg_473;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_lv<32> > grp_fu_219_p2;
    sc_signal< sc_lv<32> > sum_1_reg_498;
    sc_signal< sc_lv<32> > grp_fu_243_p2;
    sc_signal< sc_lv<32> > tmp_2_reg_503;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter16;
    sc_signal< sc_lv<32> > grp_fu_223_p2;
    sc_signal< sc_lv<32> > sum_2_reg_528;
    sc_signal< sc_lv<32> > grp_fu_249_p2;
    sc_signal< sc_lv<32> > tmp_3_reg_533;
    sc_signal< sc_lv<32> > grp_fu_227_p2;
    sc_signal< sc_lv<32> > sum_3_reg_538;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter17;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter18;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter19;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter20;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter21;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter22;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter23;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter24;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter25;
    sc_signal< sc_lv<3> > ap_phi_mux_i_0_phi_fu_196_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln16_fu_367_p1;
    sc_signal< sc_lv<1> > icmp_ln9_fu_273_p2;
    sc_signal< sc_lv<3> > i_fu_267_p2;
    sc_signal< sc_lv<4> > or_ln14_fu_319_p2;
    sc_signal< sc_lv<4> > zext_ln14_3_fu_333_p1;
    sc_signal< sc_lv<4> > add_ln14_fu_336_p2;
    sc_signal< sc_lv<5> > tmp_6_fu_347_p3;
    sc_signal< sc_lv<6> > zext_ln14_2_fu_358_p1;
    sc_signal< sc_lv<6> > zext_ln10_fu_354_p1;
    sc_signal< sc_lv<6> > add_ln16_fu_361_p2;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state28;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<60> ap_const_lv60_0;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_A_0_address0();
    void thread_A_0_address1();
    void thread_A_0_ce0();
    void thread_A_0_ce1();
    void thread_A_1_address0();
    void thread_A_1_address1();
    void thread_A_1_ce0();
    void thread_A_1_ce1();
    void thread_B_0_address0();
    void thread_B_0_address1();
    void thread_B_0_ce0();
    void thread_B_0_ce1();
    void thread_B_1_address0();
    void thread_B_1_address1();
    void thread_B_1_ce0();
    void thread_B_1_ce1();
    void thread_add_ln14_fu_336_p2();
    void thread_add_ln16_fu_361_p2();
    void thread_add_ln7_fu_261_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state28();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state14_pp0_stage0_iter12();
    void thread_ap_block_state15_pp0_stage0_iter13();
    void thread_ap_block_state16_pp0_stage0_iter14();
    void thread_ap_block_state17_pp0_stage0_iter15();
    void thread_ap_block_state18_pp0_stage0_iter16();
    void thread_ap_block_state19_pp0_stage0_iter17();
    void thread_ap_block_state20_pp0_stage0_iter18();
    void thread_ap_block_state21_pp0_stage0_iter19();
    void thread_ap_block_state22_pp0_stage0_iter20();
    void thread_ap_block_state23_pp0_stage0_iter21();
    void thread_ap_block_state24_pp0_stage0_iter22();
    void thread_ap_block_state25_pp0_stage0_iter23();
    void thread_ap_block_state26_pp0_stage0_iter24();
    void thread_ap_block_state27_pp0_stage0_iter25();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_0_phi_fu_196_p4();
    void thread_ap_ready();
    void thread_i_fu_267_p2();
    void thread_icmp_ln7_fu_255_p2();
    void thread_icmp_ln9_fu_273_p2();
    void thread_j_fu_313_p2();
    void thread_or_ln14_fu_319_p2();
    void thread_res_address0();
    void thread_res_ce0();
    void thread_res_d0();
    void thread_res_we0();
    void thread_select_ln14_1_fu_287_p3();
    void thread_select_ln14_fu_279_p3();
    void thread_tmp_4_fu_295_p3();
    void thread_tmp_5_fu_324_p3();
    void thread_tmp_6_fu_347_p3();
    void thread_zext_ln10_fu_354_p1();
    void thread_zext_ln14_1_fu_308_p1();
    void thread_zext_ln14_2_fu_358_p1();
    void thread_zext_ln14_3_fu_333_p1();
    void thread_zext_ln14_4_fu_342_p1();
    void thread_zext_ln14_fu_303_p1();
    void thread_zext_ln16_fu_367_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
