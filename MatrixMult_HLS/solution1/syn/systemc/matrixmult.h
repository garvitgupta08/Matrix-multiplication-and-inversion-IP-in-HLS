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
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_in< sc_lv<32> > A_q0;
    sc_out< sc_lv<4> > B_address0;
    sc_out< sc_logic > B_ce0;
    sc_in< sc_lv<32> > B_q0;
    sc_out< sc_lv<4> > res_address0;
    sc_out< sc_logic > res_ce0;
    sc_out< sc_logic > res_we0;
    sc_out< sc_lv<32> > res_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matrixmult(sc_module_name name);
    SC_HAS_PROCESS(matrixmult);

    ~matrixmult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmult_fadd_3bkb<1,5,32,32,32>* matrixmult_fadd_3bkb_U1;
    matrixmult_fmul_3cud<1,4,32,32,32>* matrixmult_fmul_3cud_U2;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > i_fu_131_p2;
    sc_signal< sc_lv<3> > i_reg_226;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > zext_ln7_fu_145_p1;
    sc_signal< sc_lv<6> > zext_ln7_reg_231;
    sc_signal< sc_lv<1> > icmp_ln5_fu_125_p2;
    sc_signal< sc_lv<3> > j_fu_155_p2;
    sc_signal< sc_lv<3> > j_reg_240;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > zext_ln13_fu_161_p1;
    sc_signal< sc_lv<6> > zext_ln13_reg_245;
    sc_signal< sc_lv<1> > icmp_ln7_fu_149_p2;
    sc_signal< sc_lv<4> > res_addr_reg_250;
    sc_signal< sc_lv<3> > k_fu_181_p2;
    sc_signal< sc_lv<3> > k_reg_258;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln10_fu_175_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > grp_fu_119_p2;
    sc_signal< sc_lv<32> > tmp_reg_283;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > grp_fu_114_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<3> > i_0_reg_68;
    sc_signal< sc_lv<3> > j_0_reg_79;
    sc_signal< sc_lv<32> > sum_0_reg_90;
    sc_signal< sc_lv<3> > k_0_reg_103;
    sc_signal< sc_lv<64> > zext_ln13_1_fu_170_p1;
    sc_signal< sc_lv<64> > zext_ln11_1_fu_196_p1;
    sc_signal< sc_lv<64> > zext_ln11_3_fu_218_p1;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > tmp_1_fu_137_p3;
    sc_signal< sc_lv<6> > add_ln13_fu_165_p2;
    sc_signal< sc_lv<6> > zext_ln11_fu_187_p1;
    sc_signal< sc_lv<6> > add_ln11_fu_191_p2;
    sc_signal< sc_lv<5> > tmp_2_fu_201_p3;
    sc_signal< sc_lv<6> > zext_ln11_2_fu_209_p1;
    sc_signal< sc_lv<6> > add_ln11_1_fu_213_p2;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_add_ln11_1_fu_213_p2();
    void thread_add_ln11_fu_191_p2();
    void thread_add_ln13_fu_165_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_fu_131_p2();
    void thread_icmp_ln10_fu_175_p2();
    void thread_icmp_ln5_fu_125_p2();
    void thread_icmp_ln7_fu_149_p2();
    void thread_j_fu_155_p2();
    void thread_k_fu_181_p2();
    void thread_res_address0();
    void thread_res_ce0();
    void thread_res_d0();
    void thread_res_we0();
    void thread_tmp_1_fu_137_p3();
    void thread_tmp_2_fu_201_p3();
    void thread_zext_ln11_1_fu_196_p1();
    void thread_zext_ln11_2_fu_209_p1();
    void thread_zext_ln11_3_fu_218_p1();
    void thread_zext_ln11_fu_187_p1();
    void thread_zext_ln13_1_fu_170_p1();
    void thread_zext_ln13_fu_161_p1();
    void thread_zext_ln7_fu_145_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
