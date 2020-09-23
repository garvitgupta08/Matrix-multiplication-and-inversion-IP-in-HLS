// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _final_perm_HH_
#define _final_perm_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct final_perm : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > UL_inv_address0;
    sc_out< sc_logic > UL_inv_ce0;
    sc_in< sc_lv<32> > UL_inv_q0;
    sc_in< sc_lv<32> > P_0_read;
    sc_in< sc_lv<32> > P_1_read;
    sc_in< sc_lv<32> > P_2_read;
    sc_out< sc_lv<4> > A_inv_address0;
    sc_out< sc_logic > A_inv_ce0;
    sc_out< sc_logic > A_inv_we0;
    sc_out< sc_lv<32> > A_inv_d0;


    // Module declarations
    final_perm(sc_module_name name);
    SC_HAS_PROCESS(final_perm);

    ~final_perm();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > i_fu_156_p2;
    sc_signal< sc_lv<2> > i_reg_384;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > zext_ln226_fu_162_p1;
    sc_signal< sc_lv<5> > zext_ln226_reg_389;
    sc_signal< sc_lv<1> > icmp_ln224_fu_150_p2;
    sc_signal< sc_lv<2> > j_fu_172_p2;
    sc_signal< sc_lv<2> > j_reg_397;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > p_Val2_s_fu_178_p1;
    sc_signal< sc_lv<32> > p_Val2_s_reg_402;
    sc_signal< sc_lv<1> > icmp_ln226_fu_166_p2;
    sc_signal< sc_lv<23> > tmp_V_1_fu_192_p1;
    sc_signal< sc_lv<23> > tmp_V_1_reg_407;
    sc_signal< sc_lv<1> > isNeg_fu_206_p3;
    sc_signal< sc_lv<1> > isNeg_reg_412;
    sc_signal< sc_lv<9> > ush_fu_224_p3;
    sc_signal< sc_lv<9> > ush_reg_417;
    sc_signal< sc_lv<5> > add_ln228_fu_347_p2;
    sc_signal< sc_lv<5> > add_ln228_reg_423;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > add_ln228_1_fu_353_p2;
    sc_signal< sc_lv<5> > add_ln228_1_reg_428;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > i_0_reg_115;
    sc_signal< sc_lv<2> > j_0_reg_127;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > ap_phi_mux_phi_ln228_phi_fu_142_p6;
    sc_signal< sc_lv<64> > sext_ln228_fu_358_p1;
    sc_signal< sc_lv<64> > sext_ln228_1_fu_362_p1;
    sc_signal< sc_lv<8> > tmp_V_fu_182_p4;
    sc_signal< sc_lv<9> > zext_ln339_fu_196_p1;
    sc_signal< sc_lv<9> > add_ln339_fu_200_p2;
    sc_signal< sc_lv<8> > sub_ln1311_fu_214_p2;
    sc_signal< sc_lv<9> > sext_ln1311_fu_220_p1;
    sc_signal< sc_lv<25> > mantissa_V_fu_239_p4;
    sc_signal< sc_lv<32> > sext_ln1311_1_fu_252_p1;
    sc_signal< sc_lv<25> > sext_ln1311_2_fu_255_p1;
    sc_signal< sc_lv<79> > zext_ln682_fu_248_p1;
    sc_signal< sc_lv<79> > zext_ln1287_fu_258_p1;
    sc_signal< sc_lv<25> > r_V_fu_262_p2;
    sc_signal< sc_lv<1> > tmp_fu_274_p3;
    sc_signal< sc_lv<79> > r_V_1_fu_268_p2;
    sc_signal< sc_lv<32> > zext_ln662_fu_282_p1;
    sc_signal< sc_lv<32> > tmp_31_fu_286_p4;
    sc_signal< sc_lv<32> > p_Val2_4_fu_296_p3;
    sc_signal< sc_lv<5> > trunc_ln657_fu_303_p1;
    sc_signal< sc_lv<1> > p_Result_s_fu_232_p3;
    sc_signal< sc_lv<5> > sub_ln228_1_fu_307_p2;
    sc_signal< sc_lv<5> > trunc_ln228_fu_313_p1;
    sc_signal< sc_lv<4> > tmp_32_fu_329_p3;
    sc_signal< sc_lv<5> > zext_ln228_1_fu_337_p1;
    sc_signal< sc_lv<5> > zext_ln228_fu_325_p1;
    sc_signal< sc_lv<5> > sub_ln228_fu_341_p2;
    sc_signal< sc_lv<5> > select_ln59_fu_317_p3;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<9> ap_const_lv9_181;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<5> ap_const_lv5_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_inv_address0();
    void thread_A_inv_ce0();
    void thread_A_inv_d0();
    void thread_A_inv_we0();
    void thread_UL_inv_address0();
    void thread_UL_inv_ce0();
    void thread_add_ln228_1_fu_353_p2();
    void thread_add_ln228_fu_347_p2();
    void thread_add_ln339_fu_200_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_phi_ln228_phi_fu_142_p6();
    void thread_ap_ready();
    void thread_i_fu_156_p2();
    void thread_icmp_ln224_fu_150_p2();
    void thread_icmp_ln226_fu_166_p2();
    void thread_isNeg_fu_206_p3();
    void thread_j_fu_172_p2();
    void thread_mantissa_V_fu_239_p4();
    void thread_p_Result_s_fu_232_p3();
    void thread_p_Val2_4_fu_296_p3();
    void thread_p_Val2_s_fu_178_p1();
    void thread_r_V_1_fu_268_p2();
    void thread_r_V_fu_262_p2();
    void thread_select_ln59_fu_317_p3();
    void thread_sext_ln1311_1_fu_252_p1();
    void thread_sext_ln1311_2_fu_255_p1();
    void thread_sext_ln1311_fu_220_p1();
    void thread_sext_ln228_1_fu_362_p1();
    void thread_sext_ln228_fu_358_p1();
    void thread_sub_ln1311_fu_214_p2();
    void thread_sub_ln228_1_fu_307_p2();
    void thread_sub_ln228_fu_341_p2();
    void thread_tmp_31_fu_286_p4();
    void thread_tmp_32_fu_329_p3();
    void thread_tmp_V_1_fu_192_p1();
    void thread_tmp_V_fu_182_p4();
    void thread_tmp_fu_274_p3();
    void thread_trunc_ln228_fu_313_p1();
    void thread_trunc_ln657_fu_303_p1();
    void thread_ush_fu_224_p3();
    void thread_zext_ln1287_fu_258_p1();
    void thread_zext_ln226_fu_162_p1();
    void thread_zext_ln228_1_fu_337_p1();
    void thread_zext_ln228_fu_325_p1();
    void thread_zext_ln339_fu_196_p1();
    void thread_zext_ln662_fu_282_p1();
    void thread_zext_ln682_fu_248_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif