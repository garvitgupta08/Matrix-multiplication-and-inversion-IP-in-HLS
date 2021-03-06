// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "matrix_mult.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic matrix_mult::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic matrix_mult::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<13> matrix_mult::ap_ST_fsm_state1 = "1";
const sc_lv<13> matrix_mult::ap_ST_fsm_state2 = "10";
const sc_lv<13> matrix_mult::ap_ST_fsm_state3 = "100";
const sc_lv<13> matrix_mult::ap_ST_fsm_state4 = "1000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state5 = "10000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state6 = "100000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state7 = "1000000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state8 = "10000000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state9 = "100000000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state10 = "1000000000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state11 = "10000000000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state12 = "100000000000";
const sc_lv<13> matrix_mult::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<32> matrix_mult::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> matrix_mult::ap_const_lv32_1 = "1";
const sc_lv<1> matrix_mult::ap_const_lv1_0 = "0";
const sc_lv<32> matrix_mult::ap_const_lv32_2 = "10";
const sc_lv<32> matrix_mult::ap_const_lv32_3 = "11";
const sc_lv<32> matrix_mult::ap_const_lv32_4 = "100";
const sc_lv<32> matrix_mult::ap_const_lv32_7 = "111";
const sc_lv<32> matrix_mult::ap_const_lv32_C = "1100";
const sc_lv<2> matrix_mult::ap_const_lv2_0 = "00";
const sc_lv<1> matrix_mult::ap_const_lv1_1 = "1";
const sc_lv<32> matrix_mult::ap_const_lv32_8 = "1000";
const sc_lv<2> matrix_mult::ap_const_lv2_3 = "11";
const sc_lv<2> matrix_mult::ap_const_lv2_1 = "1";
const bool matrix_mult::ap_const_boolean_1 = true;

matrix_mult::matrix_mult(sc_module_name name) : sc_module(name), mVcdFile(0) {
    inverse_top_fadd_hbi_U30 = new inverse_top_fadd_hbi<1,5,32,32,32>("inverse_top_fadd_hbi_U30");
    inverse_top_fadd_hbi_U30->clk(ap_clk);
    inverse_top_fadd_hbi_U30->reset(ap_rst);
    inverse_top_fadd_hbi_U30->din0(sumFinal_0_reg_94);
    inverse_top_fadd_hbi_U30->din1(sumTemp_reg_303);
    inverse_top_fadd_hbi_U30->ce(ap_var_for_const0);
    inverse_top_fadd_hbi_U30->dout(grp_fu_118_p2);
    inverse_top_fmul_cud_U31 = new inverse_top_fmul_cud<1,4,32,32,32>("inverse_top_fmul_cud_U31");
    inverse_top_fmul_cud_U31->clk(ap_clk);
    inverse_top_fmul_cud_U31->reset(ap_rst);
    inverse_top_fmul_cud_U31->din0(U_inv_q0);
    inverse_top_fmul_cud_U31->din1(L_inv_q0);
    inverse_top_fmul_cud_U31->ce(ap_var_for_const0);
    inverse_top_fmul_cud_U31->dout(grp_fu_123_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_inv_address0);
    sensitive << ( A_inv_addr_reg_270 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_A_inv_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_A_inv_d0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sumFinal_0_reg_94 );

    SC_METHOD(thread_A_inv_we0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln211_fu_189_p2 );

    SC_METHOD(thread_L_inv_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sext_ln213_1_fu_238_p1 );

    SC_METHOD(thread_L_inv_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_U_inv_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sext_ln213_fu_210_p1 );

    SC_METHOD(thread_U_inv_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_add_ln213_1_fu_233_p2);
    sensitive << ( zext_ln216_reg_265 );
    sensitive << ( sub_ln213_1_fu_227_p2 );

    SC_METHOD(thread_add_ln213_fu_205_p2);
    sensitive << ( sub_ln213_reg_251 );
    sensitive << ( zext_ln213_2_fu_201_p1 );

    SC_METHOD(thread_add_ln216_fu_179_p2);
    sensitive << ( sub_ln213_reg_251 );
    sensitive << ( zext_ln216_fu_175_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state13);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln206_fu_129_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln206_fu_129_p2 );

    SC_METHOD(thread_i_fu_135_p2);
    sensitive << ( i_0_reg_72 );

    SC_METHOD(thread_icmp_ln206_fu_129_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_72 );

    SC_METHOD(thread_icmp_ln208_fu_163_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_0_reg_83 );

    SC_METHOD(thread_icmp_ln211_fu_189_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( k_0_reg_107 );

    SC_METHOD(thread_j_fu_169_p2);
    sensitive << ( j_0_reg_83 );

    SC_METHOD(thread_k_fu_195_p2);
    sensitive << ( k_0_reg_107 );

    SC_METHOD(thread_sext_ln213_1_fu_238_p1);
    sensitive << ( add_ln213_1_fu_233_p2 );

    SC_METHOD(thread_sext_ln213_fu_210_p1);
    sensitive << ( add_ln213_fu_205_p2 );

    SC_METHOD(thread_sext_ln216_fu_184_p1);
    sensitive << ( add_ln216_fu_179_p2 );

    SC_METHOD(thread_sub_ln213_1_fu_227_p2);
    sensitive << ( zext_ln213_2_fu_201_p1 );
    sensitive << ( zext_ln213_3_fu_223_p1 );

    SC_METHOD(thread_sub_ln213_fu_157_p2);
    sensitive << ( zext_ln213_1_fu_153_p1 );
    sensitive << ( zext_ln213_fu_141_p1 );

    SC_METHOD(thread_tmp_2_fu_145_p3);
    sensitive << ( i_0_reg_72 );

    SC_METHOD(thread_tmp_3_fu_215_p3);
    sensitive << ( k_0_reg_107 );

    SC_METHOD(thread_zext_ln213_1_fu_153_p1);
    sensitive << ( tmp_2_fu_145_p3 );

    SC_METHOD(thread_zext_ln213_2_fu_201_p1);
    sensitive << ( k_0_reg_107 );

    SC_METHOD(thread_zext_ln213_3_fu_223_p1);
    sensitive << ( tmp_3_fu_215_p3 );

    SC_METHOD(thread_zext_ln213_fu_141_p1);
    sensitive << ( i_0_reg_72 );

    SC_METHOD(thread_zext_ln216_fu_175_p1);
    sensitive << ( j_0_reg_83 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln206_fu_129_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln208_fu_163_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln211_fu_189_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "matrix_mult_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, U_inv_address0, "(port)U_inv_address0");
    sc_trace(mVcdFile, U_inv_ce0, "(port)U_inv_ce0");
    sc_trace(mVcdFile, U_inv_q0, "(port)U_inv_q0");
    sc_trace(mVcdFile, L_inv_address0, "(port)L_inv_address0");
    sc_trace(mVcdFile, L_inv_ce0, "(port)L_inv_ce0");
    sc_trace(mVcdFile, L_inv_q0, "(port)L_inv_q0");
    sc_trace(mVcdFile, A_inv_address0, "(port)A_inv_address0");
    sc_trace(mVcdFile, A_inv_ce0, "(port)A_inv_ce0");
    sc_trace(mVcdFile, A_inv_we0, "(port)A_inv_we0");
    sc_trace(mVcdFile, A_inv_d0, "(port)A_inv_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_fu_135_p2, "i_fu_135_p2");
    sc_trace(mVcdFile, i_reg_246, "i_reg_246");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, sub_ln213_fu_157_p2, "sub_ln213_fu_157_p2");
    sc_trace(mVcdFile, sub_ln213_reg_251, "sub_ln213_reg_251");
    sc_trace(mVcdFile, icmp_ln206_fu_129_p2, "icmp_ln206_fu_129_p2");
    sc_trace(mVcdFile, j_fu_169_p2, "j_fu_169_p2");
    sc_trace(mVcdFile, j_reg_260, "j_reg_260");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, zext_ln216_fu_175_p1, "zext_ln216_fu_175_p1");
    sc_trace(mVcdFile, zext_ln216_reg_265, "zext_ln216_reg_265");
    sc_trace(mVcdFile, icmp_ln208_fu_163_p2, "icmp_ln208_fu_163_p2");
    sc_trace(mVcdFile, A_inv_addr_reg_270, "A_inv_addr_reg_270");
    sc_trace(mVcdFile, k_fu_195_p2, "k_fu_195_p2");
    sc_trace(mVcdFile, k_reg_278, "k_reg_278");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, icmp_ln211_fu_189_p2, "icmp_ln211_fu_189_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, grp_fu_123_p2, "grp_fu_123_p2");
    sc_trace(mVcdFile, sumTemp_reg_303, "sumTemp_reg_303");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, grp_fu_118_p2, "grp_fu_118_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state13, "ap_CS_fsm_state13");
    sc_trace(mVcdFile, i_0_reg_72, "i_0_reg_72");
    sc_trace(mVcdFile, j_0_reg_83, "j_0_reg_83");
    sc_trace(mVcdFile, sumFinal_0_reg_94, "sumFinal_0_reg_94");
    sc_trace(mVcdFile, k_0_reg_107, "k_0_reg_107");
    sc_trace(mVcdFile, sext_ln216_fu_184_p1, "sext_ln216_fu_184_p1");
    sc_trace(mVcdFile, sext_ln213_fu_210_p1, "sext_ln213_fu_210_p1");
    sc_trace(mVcdFile, sext_ln213_1_fu_238_p1, "sext_ln213_1_fu_238_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, tmp_2_fu_145_p3, "tmp_2_fu_145_p3");
    sc_trace(mVcdFile, zext_ln213_1_fu_153_p1, "zext_ln213_1_fu_153_p1");
    sc_trace(mVcdFile, zext_ln213_fu_141_p1, "zext_ln213_fu_141_p1");
    sc_trace(mVcdFile, add_ln216_fu_179_p2, "add_ln216_fu_179_p2");
    sc_trace(mVcdFile, zext_ln213_2_fu_201_p1, "zext_ln213_2_fu_201_p1");
    sc_trace(mVcdFile, add_ln213_fu_205_p2, "add_ln213_fu_205_p2");
    sc_trace(mVcdFile, tmp_3_fu_215_p3, "tmp_3_fu_215_p3");
    sc_trace(mVcdFile, zext_ln213_3_fu_223_p1, "zext_ln213_3_fu_223_p1");
    sc_trace(mVcdFile, sub_ln213_1_fu_227_p2, "sub_ln213_1_fu_227_p2");
    sc_trace(mVcdFile, add_ln213_1_fu_233_p2, "add_ln213_1_fu_233_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

matrix_mult::~matrix_mult() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete inverse_top_fadd_hbi_U30;
    delete inverse_top_fmul_cud_U31;
}

void matrix_mult::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void matrix_mult::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln208_fu_163_p2.read(), ap_const_lv1_1))) {
        i_0_reg_72 = i_reg_246.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_72 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln211_fu_189_p2.read(), ap_const_lv1_1))) {
        j_0_reg_83 = j_reg_260.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln206_fu_129_p2.read(), ap_const_lv1_0))) {
        j_0_reg_83 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) {
        k_0_reg_107 = k_reg_278.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln208_fu_163_p2.read()))) {
        k_0_reg_107 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) {
        sumFinal_0_reg_94 = grp_fu_118_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln208_fu_163_p2.read()))) {
        sumFinal_0_reg_94 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln208_fu_163_p2.read()))) {
        A_inv_addr_reg_270 =  (sc_lv<4>) (sext_ln216_fu_184_p1.read());
        zext_ln216_reg_265 = zext_ln216_fu_175_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_246 = i_fu_135_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_reg_260 = j_fu_169_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        k_reg_278 = k_fu_195_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln206_fu_129_p2.read(), ap_const_lv1_0))) {
        sub_ln213_reg_251 = sub_ln213_fu_157_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        sumTemp_reg_303 = grp_fu_123_p2.read();
    }
}

void matrix_mult::thread_A_inv_address0() {
    A_inv_address0 = A_inv_addr_reg_270.read();
}

void matrix_mult::thread_A_inv_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        A_inv_ce0 = ap_const_logic_1;
    } else {
        A_inv_ce0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_A_inv_d0() {
    A_inv_d0 = sumFinal_0_reg_94.read();
}

void matrix_mult::thread_A_inv_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln211_fu_189_p2.read(), ap_const_lv1_1))) {
        A_inv_we0 = ap_const_logic_1;
    } else {
        A_inv_we0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_L_inv_address0() {
    L_inv_address0 =  (sc_lv<4>) (sext_ln213_1_fu_238_p1.read());
}

void matrix_mult::thread_L_inv_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        L_inv_ce0 = ap_const_logic_1;
    } else {
        L_inv_ce0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_U_inv_address0() {
    U_inv_address0 =  (sc_lv<4>) (sext_ln213_fu_210_p1.read());
}

void matrix_mult::thread_U_inv_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        U_inv_ce0 = ap_const_logic_1;
    } else {
        U_inv_ce0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_add_ln213_1_fu_233_p2() {
    add_ln213_1_fu_233_p2 = (!sub_ln213_1_fu_227_p2.read().is_01() || !zext_ln216_reg_265.read().is_01())? sc_lv<5>(): (sc_biguint<5>(sub_ln213_1_fu_227_p2.read()) + sc_biguint<5>(zext_ln216_reg_265.read()));
}

void matrix_mult::thread_add_ln213_fu_205_p2() {
    add_ln213_fu_205_p2 = (!sub_ln213_reg_251.read().is_01() || !zext_ln213_2_fu_201_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(sub_ln213_reg_251.read()) + sc_biguint<5>(zext_ln213_2_fu_201_p1.read()));
}

void matrix_mult::thread_add_ln216_fu_179_p2() {
    add_ln216_fu_179_p2 = (!sub_ln213_reg_251.read().is_01() || !zext_ln216_fu_175_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(sub_ln213_reg_251.read()) + sc_biguint<5>(zext_ln216_fu_175_p1.read()));
}

void matrix_mult::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void matrix_mult::thread_ap_CS_fsm_state13() {
    ap_CS_fsm_state13 = ap_CS_fsm.read()[12];
}

void matrix_mult::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void matrix_mult::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void matrix_mult::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void matrix_mult::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void matrix_mult::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void matrix_mult::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void matrix_mult::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln206_fu_129_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln206_fu_129_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void matrix_mult::thread_i_fu_135_p2() {
    i_fu_135_p2 = (!i_0_reg_72.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_0_reg_72.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void matrix_mult::thread_icmp_ln206_fu_129_p2() {
    icmp_ln206_fu_129_p2 = (!i_0_reg_72.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_72.read() == ap_const_lv2_3);
}

void matrix_mult::thread_icmp_ln208_fu_163_p2() {
    icmp_ln208_fu_163_p2 = (!j_0_reg_83.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(j_0_reg_83.read() == ap_const_lv2_3);
}

void matrix_mult::thread_icmp_ln211_fu_189_p2() {
    icmp_ln211_fu_189_p2 = (!k_0_reg_107.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(k_0_reg_107.read() == ap_const_lv2_3);
}

void matrix_mult::thread_j_fu_169_p2() {
    j_fu_169_p2 = (!j_0_reg_83.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(j_0_reg_83.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void matrix_mult::thread_k_fu_195_p2() {
    k_fu_195_p2 = (!k_0_reg_107.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(k_0_reg_107.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void matrix_mult::thread_sext_ln213_1_fu_238_p1() {
    sext_ln213_1_fu_238_p1 = esl_sext<64,5>(add_ln213_1_fu_233_p2.read());
}

void matrix_mult::thread_sext_ln213_fu_210_p1() {
    sext_ln213_fu_210_p1 = esl_sext<64,5>(add_ln213_fu_205_p2.read());
}

void matrix_mult::thread_sext_ln216_fu_184_p1() {
    sext_ln216_fu_184_p1 = esl_sext<64,5>(add_ln216_fu_179_p2.read());
}

void matrix_mult::thread_sub_ln213_1_fu_227_p2() {
    sub_ln213_1_fu_227_p2 = (!zext_ln213_3_fu_223_p1.read().is_01() || !zext_ln213_2_fu_201_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(zext_ln213_3_fu_223_p1.read()) - sc_biguint<5>(zext_ln213_2_fu_201_p1.read()));
}

void matrix_mult::thread_sub_ln213_fu_157_p2() {
    sub_ln213_fu_157_p2 = (!zext_ln213_1_fu_153_p1.read().is_01() || !zext_ln213_fu_141_p1.read().is_01())? sc_lv<5>(): (sc_biguint<5>(zext_ln213_1_fu_153_p1.read()) - sc_biguint<5>(zext_ln213_fu_141_p1.read()));
}

void matrix_mult::thread_tmp_2_fu_145_p3() {
    tmp_2_fu_145_p3 = esl_concat<2,2>(i_0_reg_72.read(), ap_const_lv2_0);
}

void matrix_mult::thread_tmp_3_fu_215_p3() {
    tmp_3_fu_215_p3 = esl_concat<2,2>(k_0_reg_107.read(), ap_const_lv2_0);
}

void matrix_mult::thread_zext_ln213_1_fu_153_p1() {
    zext_ln213_1_fu_153_p1 = esl_zext<5,4>(tmp_2_fu_145_p3.read());
}

void matrix_mult::thread_zext_ln213_2_fu_201_p1() {
    zext_ln213_2_fu_201_p1 = esl_zext<5,2>(k_0_reg_107.read());
}

void matrix_mult::thread_zext_ln213_3_fu_223_p1() {
    zext_ln213_3_fu_223_p1 = esl_zext<5,4>(tmp_3_fu_215_p3.read());
}

void matrix_mult::thread_zext_ln213_fu_141_p1() {
    zext_ln213_fu_141_p1 = esl_zext<5,2>(i_0_reg_72.read());
}

void matrix_mult::thread_zext_ln216_fu_175_p1() {
    zext_ln216_fu_175_p1 = esl_zext<5,2>(j_0_reg_83.read());
}

void matrix_mult::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln206_fu_129_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln208_fu_163_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln211_fu_189_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXXXX";
            break;
    }
}

}

