// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Lower_inv_HH_
#define _Lower_inv_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "inverse_top_fadd_bkb.h"
#include "inverse_top_fmul_cud.h"
#include "inverse_top_fdiv_dEe.h"
#include "inverse_top_mux_3eOg.h"

namespace ap_rtl {

struct Lower_inv : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > L_address0;
    sc_out< sc_logic > L_ce0;
    sc_in< sc_lv<32> > L_q0;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_out< sc_lv<32> > ap_return_6;
    sc_out< sc_lv<32> > ap_return_7;
    sc_out< sc_lv<32> > ap_return_8;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    Lower_inv(sc_module_name name);
    SC_HAS_PROCESS(Lower_inv);

    ~Lower_inv();

    sc_trace_file* mVcdFile;

    inverse_top_fadd_bkb<1,5,32,32,32>* inverse_top_fadd_bkb_U1;
    inverse_top_fmul_cud<1,4,32,32,32>* inverse_top_fmul_cud_U2;
    inverse_top_fdiv_dEe<1,16,32,32,32>* inverse_top_fdiv_dEe_U3;
    inverse_top_mux_3eOg<1,1,32,32,32,2,32>* inverse_top_mux_3eOg_U4;
    inverse_top_mux_3eOg<1,1,32,32,32,2,32>* inverse_top_mux_3eOg_U5;
    sc_signal< sc_lv<24> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > sum_0_reg_148;
    sc_signal< sc_lv<32> > k_0_reg_160;
    sc_signal< sc_lv<1> > icmp_ln147_fu_214_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > add_ln147_fu_220_p2;
    sc_signal< sc_lv<4> > add_ln147_reg_726;
    sc_signal< sc_lv<2> > select_ln147_fu_238_p3;
    sc_signal< sc_lv<2> > select_ln147_reg_731;
    sc_signal< sc_lv<2> > select_ln147_1_fu_247_p3;
    sc_signal< sc_lv<2> > select_ln147_1_reg_740;
    sc_signal< sc_lv<32> > zext_ln147_fu_255_p1;
    sc_signal< sc_lv<32> > zext_ln147_reg_745;
    sc_signal< sc_lv<5> > sub_ln155_fu_280_p2;
    sc_signal< sc_lv<5> > sub_ln155_reg_750;
    sc_signal< sc_lv<32> > zext_ln159_fu_306_p1;
    sc_signal< sc_lv<1> > icmp_ln152_fu_310_p2;
    sc_signal< sc_lv<1> > icmp_ln152_reg_768;
    sc_signal< sc_lv<1> > icmp_ln154_fu_316_p2;
    sc_signal< sc_lv<1> > icmp_ln154_reg_772;
    sc_signal< sc_lv<1> > icmp_ln159_fu_437_p2;
    sc_signal< sc_lv<1> > icmp_ln159_reg_776;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln159_reg_776_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln166_fu_460_p2;
    sc_signal< sc_lv<1> > icmp_ln166_reg_785;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > grp_fu_175_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_800;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state7_pp0_stage4_iter0;
    sc_signal< bool > ap_block_state12_pp0_stage4_iter1;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<32> > k_3_fu_496_p2;
    sc_signal< sc_lv<32> > k_3_reg_805;
    sc_signal< sc_lv<32> > grp_fu_170_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<2> > j_fu_656_p2;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< sc_lv<4> > indvar_flatten_reg_115;
    sc_signal< sc_lv<2> > i_0_reg_126;
    sc_signal< sc_lv<2> > k_reg_137;
    sc_signal< sc_lv<32> > ap_phi_mux_k_0_phi_fu_163_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln155_fu_271_p1;
    sc_signal< sc_lv<64> > sext_ln166_fu_451_p1;
    sc_signal< sc_lv<32> > L_inv27_1_fu_58;
    sc_signal< sc_lv<32> > bitcast_ln168_1_fu_512_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > L_inv26_1_fu_62;
    sc_signal< sc_lv<32> > L_inv_1_0_1_fu_66;
    sc_signal< sc_lv<32> > L_inv_1_0_3_fu_548_p3;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > L_inv28_1_fu_70;
    sc_signal< sc_lv<32> > grp_fu_180_p2;
    sc_signal< sc_lv<32> > L_inv_1_2_1_fu_74;
    sc_signal< sc_lv<32> > select_ln153_3_fu_330_p3;
    sc_signal< sc_lv<1> > select_ln147_2_fu_298_p3;
    sc_signal< sc_lv<32> > L_inv_1_2_4_fu_524_p3;
    sc_signal< sc_lv<32> > L_inv_0_2_1_fu_78;
    sc_signal< sc_lv<32> > select_ln153_1_fu_356_p3;
    sc_signal< sc_lv<32> > L_inv_0_2_4_fu_579_p3;
    sc_signal< sc_lv<32> > L_inv_0_1_1_fu_82;
    sc_signal< sc_lv<32> > select_ln153_fu_348_p3;
    sc_signal< sc_lv<32> > L_inv_0_1_4_fu_587_p3;
    sc_signal< sc_lv<32> > L_inv_0_0_1_fu_86;
    sc_signal< sc_lv<32> > L_inv_0_0_3_fu_603_p3;
    sc_signal< sc_lv<32> > L_inv_1_1_1_fu_90;
    sc_signal< sc_lv<32> > select_ln153_2_fu_322_p3;
    sc_signal< sc_lv<32> > L_inv_1_1_4_fu_532_p3;
    sc_signal< sc_lv<32> > grp_fu_175_p1;
    sc_signal< sc_lv<2> > grp_fu_186_p0;
    sc_signal< sc_lv<1> > icmp_ln149_fu_232_p2;
    sc_signal< sc_lv<2> > i_fu_226_p2;
    sc_signal< sc_lv<4> > tmp_50_fu_263_p3;
    sc_signal< sc_lv<5> > zext_ln155_2_fu_276_p1;
    sc_signal< sc_lv<5> > zext_ln155_1_fu_259_p1;
    sc_signal< sc_lv<1> > icmp_ln153_fu_286_p2;
    sc_signal< sc_lv<1> > icmp_ln153_2_fu_292_p2;
    sc_signal< sc_lv<1> > grp_fu_186_p2;
    sc_signal< sc_lv<5> > trunc_ln166_fu_442_p1;
    sc_signal< sc_lv<5> > add_ln166_fu_446_p2;
    sc_signal< sc_lv<2> > trunc_ln166_1_fu_456_p1;
    sc_signal< sc_lv<32> > tmp_48_fu_466_p5;
    sc_signal< sc_lv<32> > tmp_49_fu_477_p5;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_lv<32> > bitcast_ln168_fu_502_p1;
    sc_signal< sc_lv<32> > xor_ln168_fu_506_p2;
    sc_signal< sc_lv<1> > grp_fu_209_p2;
    sc_signal< sc_lv<32> > select_ln168_2_fu_516_p3;
    sc_signal< sc_lv<32> > select_ln168_3_fu_540_p3;
    sc_signal< sc_lv<32> > select_ln168_fu_571_p3;
    sc_signal< sc_lv<32> > select_ln168_1_fu_595_p3;
    sc_signal< sc_lv<24> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_state5_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state10_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_state6_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state11_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_889;
    sc_signal< bool > ap_condition_893;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<24> ap_ST_fsm_state1;
    static const sc_lv<24> ap_ST_fsm_state2;
    static const sc_lv<24> ap_ST_fsm_pp0_stage0;
    static const sc_lv<24> ap_ST_fsm_pp0_stage1;
    static const sc_lv<24> ap_ST_fsm_pp0_stage2;
    static const sc_lv<24> ap_ST_fsm_pp0_stage3;
    static const sc_lv<24> ap_ST_fsm_pp0_stage4;
    static const sc_lv<24> ap_ST_fsm_state13;
    static const sc_lv<24> ap_ST_fsm_state14;
    static const sc_lv<24> ap_ST_fsm_state15;
    static const sc_lv<24> ap_ST_fsm_state16;
    static const sc_lv<24> ap_ST_fsm_state17;
    static const sc_lv<24> ap_ST_fsm_state18;
    static const sc_lv<24> ap_ST_fsm_state19;
    static const sc_lv<24> ap_ST_fsm_state20;
    static const sc_lv<24> ap_ST_fsm_state21;
    static const sc_lv<24> ap_ST_fsm_state22;
    static const sc_lv<24> ap_ST_fsm_state23;
    static const sc_lv<24> ap_ST_fsm_state24;
    static const sc_lv<24> ap_ST_fsm_state25;
    static const sc_lv<24> ap_ST_fsm_state26;
    static const sc_lv<24> ap_ST_fsm_state27;
    static const sc_lv<24> ap_ST_fsm_state28;
    static const sc_lv<24> ap_ST_fsm_state29;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<32> ap_const_lv32_80000000;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_L_address0();
    void thread_L_ce0();
    void thread_L_inv_0_0_3_fu_603_p3();
    void thread_L_inv_0_1_4_fu_587_p3();
    void thread_L_inv_0_2_4_fu_579_p3();
    void thread_L_inv_1_0_3_fu_548_p3();
    void thread_L_inv_1_1_4_fu_532_p3();
    void thread_L_inv_1_2_4_fu_524_p3();
    void thread_add_ln147_fu_220_p2();
    void thread_add_ln166_fu_446_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state29();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_state10_pp0_stage2_iter1();
    void thread_ap_block_state11_pp0_stage3_iter1();
    void thread_ap_block_state12_pp0_stage4_iter1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage1_iter0();
    void thread_ap_block_state5_pp0_stage2_iter0();
    void thread_ap_block_state6_pp0_stage3_iter0();
    void thread_ap_block_state7_pp0_stage4_iter0();
    void thread_ap_block_state8_pp0_stage0_iter1();
    void thread_ap_block_state9_pp0_stage1_iter1();
    void thread_ap_condition_889();
    void thread_ap_condition_893();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_k_0_phi_fu_163_p4();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_bitcast_ln168_1_fu_512_p1();
    void thread_bitcast_ln168_fu_502_p1();
    void thread_grp_fu_175_p1();
    void thread_grp_fu_186_p0();
    void thread_grp_fu_186_p2();
    void thread_grp_fu_209_p2();
    void thread_i_fu_226_p2();
    void thread_icmp_ln147_fu_214_p2();
    void thread_icmp_ln149_fu_232_p2();
    void thread_icmp_ln152_fu_310_p2();
    void thread_icmp_ln153_2_fu_292_p2();
    void thread_icmp_ln153_fu_286_p2();
    void thread_icmp_ln154_fu_316_p2();
    void thread_icmp_ln159_fu_437_p2();
    void thread_icmp_ln166_fu_460_p2();
    void thread_j_fu_656_p2();
    void thread_k_3_fu_496_p2();
    void thread_select_ln147_1_fu_247_p3();
    void thread_select_ln147_2_fu_298_p3();
    void thread_select_ln147_fu_238_p3();
    void thread_select_ln153_1_fu_356_p3();
    void thread_select_ln153_2_fu_322_p3();
    void thread_select_ln153_3_fu_330_p3();
    void thread_select_ln153_fu_348_p3();
    void thread_select_ln168_1_fu_595_p3();
    void thread_select_ln168_2_fu_516_p3();
    void thread_select_ln168_3_fu_540_p3();
    void thread_select_ln168_fu_571_p3();
    void thread_sext_ln166_fu_451_p1();
    void thread_sub_ln155_fu_280_p2();
    void thread_tmp_50_fu_263_p3();
    void thread_trunc_ln166_1_fu_456_p1();
    void thread_trunc_ln166_fu_442_p1();
    void thread_xor_ln168_fu_506_p2();
    void thread_zext_ln147_fu_255_p1();
    void thread_zext_ln155_1_fu_259_p1();
    void thread_zext_ln155_2_fu_276_p1();
    void thread_zext_ln155_fu_271_p1();
    void thread_zext_ln159_fu_306_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
