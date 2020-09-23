// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "A_0"
#define AUTOTB_TVIN_A_0  "../tv/cdatafile/c.matrixmult.autotvin_A_0.dat"
// wrapc file define: "A_1"
#define AUTOTB_TVIN_A_1  "../tv/cdatafile/c.matrixmult.autotvin_A_1.dat"
// wrapc file define: "B_0"
#define AUTOTB_TVIN_B_0  "../tv/cdatafile/c.matrixmult.autotvin_B_0.dat"
// wrapc file define: "B_1"
#define AUTOTB_TVIN_B_1  "../tv/cdatafile/c.matrixmult.autotvin_B_1.dat"
// wrapc file define: "res"
#define AUTOTB_TVOUT_res  "../tv/cdatafile/c.matrixmult.autotvout_res.dat"
#define AUTOTB_TVIN_res  "../tv/cdatafile/c.matrixmult.autotvin_res.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "res"
#define AUTOTB_TVOUT_PC_res  "../tv/rtldatafile/rtl.matrixmult.autotvout_res.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			A_0_depth = 0;
			A_1_depth = 0;
			B_0_depth = 0;
			B_1_depth = 0;
			res_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{A_0 " << A_0_depth << "}\n";
			total_list << "{A_1 " << A_1_depth << "}\n";
			total_list << "{B_0 " << B_0_depth << "}\n";
			total_list << "{B_1 " << B_1_depth << "}\n";
			total_list << "{res " << res_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int A_0_depth;
		int A_1_depth;
		int B_0_depth;
		int B_1_depth;
		int res_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void matrixmult (
float A[4][4],
float B[4][4],
float res[4][4]);

void AESL_WRAP_matrixmult (
float A[4][4],
float B[4][4],
float res[4][4])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "res"
		aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // data

			sc_bv<32> *res_pc_buffer = new sc_bv<32>[16];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'res', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					res_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_res, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_res))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: res
				{
					// bitslice(31, 0)
					// {
						// celement: res(31, 0)
						// {
							sc_lv<32>* res_lv0_0_3_1_lv1_0_3_1 = new sc_lv<32>[16];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: res(31, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (3) @ (1)
								for (int i_1 = 0; i_1 <= 3; i_1 += 1)
								{
									if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
									{
										res_lv0_0_3_1_lv1_0_3_1[hls_map_index].range(31, 0) = sc_bv<32>(res_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: res(31, 0)
						{
							// carray: (0) => (3) @ (1)
							for (int i_0 = 0; i_0 <= 3; i_0 += 1)
							{
								// carray: (0) => (3) @ (1)
								for (int i_1 = 0; i_1 <= 3; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : res[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : res[0][0]
									// output_left_conversion : *(int*)&res[i_0][i_1]
									// output_type_conversion : (res_lv0_0_3_1_lv1_0_3_1[hls_map_index]).to_uint64()
									if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
									{
										*(int*)&res[i_0][i_1] = (res_lv0_0_3_1_lv1_0_3_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] res_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "A_0"
		char* tvin_A_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_A_0);

		// "A_1"
		char* tvin_A_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_A_1);

		// "B_0"
		char* tvin_B_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_B_0);

		// "B_1"
		char* tvin_B_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_B_1);

		// "res"
		char* tvin_res = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_res);
		char* tvout_res = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_res);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_A_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_A_0, tvin_A_0);

		sc_bv<32>* A_0_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: A_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: A(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (1) @ (1)
						for (int i_1 = 0; i_1 <= 1; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : A[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : A[0][0]
							// regulate_c_name       : A
							// input_type_conversion : *(int*)&A[i_0][i_1]
							if (&(A[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> A_tmp_mem;
								A_tmp_mem = *(int*)&A[i_0][i_1];
								A_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = A_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_A_0, "%s\n", (A_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_A_0, tvin_A_0);
		}

		tcl_file.set_num(8, &tcl_file.A_0_depth);
		sprintf(tvin_A_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_A_0, tvin_A_0);

		// release memory allocation
		delete [] A_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_A_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_A_1, tvin_A_1);

		sc_bv<32>* A_1_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: A_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: A(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (2) => (3) @ (1)
						for (int i_1 = 2; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : A[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : A[0][0]
							// regulate_c_name       : A
							// input_type_conversion : *(int*)&A[i_0][i_1]
							if (&(A[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> A_tmp_mem;
								A_tmp_mem = *(int*)&A[i_0][i_1];
								A_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = A_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_A_1, "%s\n", (A_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_A_1, tvin_A_1);
		}

		tcl_file.set_num(8, &tcl_file.A_1_depth);
		sprintf(tvin_A_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_A_1, tvin_A_1);

		// release memory allocation
		delete [] A_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_B_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_B_0, tvin_B_0);

		sc_bv<32>* B_0_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: B_0
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: B(31, 0)
				{
					// carray: (0) => (1) @ (1)
					for (int i_0 = 0; i_0 <= 1; i_0 += 1)
					{
						// carray: (0) => (3) @ (1)
						for (int i_1 = 0; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : B[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : B[0][0]
							// regulate_c_name       : B
							// input_type_conversion : *(int*)&B[i_0][i_1]
							if (&(B[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> B_tmp_mem;
								B_tmp_mem = *(int*)&B[i_0][i_1];
								B_0_tvin_wrapc_buffer[hls_map_index].range(31, 0) = B_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_B_0, "%s\n", (B_0_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_B_0, tvin_B_0);
		}

		tcl_file.set_num(8, &tcl_file.B_0_depth);
		sprintf(tvin_B_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_B_0, tvin_B_0);

		// release memory allocation
		delete [] B_0_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_B_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_B_1, tvin_B_1);

		sc_bv<32>* B_1_tvin_wrapc_buffer = new sc_bv<32>[8];

		// RTL Name: B_1
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: B(31, 0)
				{
					// carray: (2) => (3) @ (1)
					for (int i_0 = 2; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (3) @ (1)
						for (int i_1 = 0; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : B[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : B[0][0]
							// regulate_c_name       : B
							// input_type_conversion : *(int*)&B[i_0][i_1]
							if (&(B[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> B_tmp_mem;
								B_tmp_mem = *(int*)&B[i_0][i_1];
								B_1_tvin_wrapc_buffer[hls_map_index].range(31, 0) = B_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 8; i++)
		{
			sprintf(tvin_B_1, "%s\n", (B_1_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_B_1, tvin_B_1);
		}

		tcl_file.set_num(8, &tcl_file.B_1_depth);
		sprintf(tvin_B_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_B_1, tvin_B_1);

		// release memory allocation
		delete [] B_1_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_res, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_res, tvin_res);

		sc_bv<32>* res_tvin_wrapc_buffer = new sc_bv<32>[16];

		// RTL Name: res
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: res(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (3) @ (1)
						for (int i_1 = 0; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : res[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : res[0][0]
							// regulate_c_name       : res
							// input_type_conversion : *(int*)&res[i_0][i_1]
							if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> res_tmp_mem;
								res_tmp_mem = *(int*)&res[i_0][i_1];
								res_tvin_wrapc_buffer[hls_map_index].range(31, 0) = res_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_res, "%s\n", (res_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_res, tvin_res);
		}

		tcl_file.set_num(16, &tcl_file.res_depth);
		sprintf(tvin_res, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_res, tvin_res);

		// release memory allocation
		delete [] res_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		matrixmult(A, B, res);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_res, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);

		sc_bv<32>* res_tvout_wrapc_buffer = new sc_bv<32>[16];

		// RTL Name: res
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: res(31, 0)
				{
					// carray: (0) => (3) @ (1)
					for (int i_0 = 0; i_0 <= 3; i_0 += 1)
					{
						// carray: (0) => (3) @ (1)
						for (int i_1 = 0; i_1 <= 3; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : res[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : res[0][0]
							// regulate_c_name       : res
							// input_type_conversion : *(int*)&res[i_0][i_1]
							if (&(res[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> res_tmp_mem;
								res_tmp_mem = *(int*)&res[i_0][i_1];
								res_tvout_wrapc_buffer[hls_map_index].range(31, 0) = res_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvout_res, "%s\n", (res_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);
		}

		tcl_file.set_num(16, &tcl_file.res_depth);
		sprintf(tvout_res, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_res, tvout_res);

		// release memory allocation
		delete [] res_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "A_0"
		delete [] tvin_A_0;
		// release memory allocation: "A_1"
		delete [] tvin_A_1;
		// release memory allocation: "B_0"
		delete [] tvin_B_0;
		// release memory allocation: "B_1"
		delete [] tvin_B_1;
		// release memory allocation: "res"
		delete [] tvout_res;
		delete [] tvin_res;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

