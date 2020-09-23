set moduleName final_perm
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {final_perm}
set C_modelType { void 0 }
set C_modelArgList {
	{ UL_inv float 32 regular {array 9 { 1 3 } 1 1 }  }
	{ P_0_read float 32 regular  }
	{ P_1_read float 32 regular  }
	{ P_2_read float 32 regular  }
	{ A_inv float 32 regular {array 9 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "UL_inv", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_inv", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ UL_inv_address0 sc_out sc_lv 4 signal 0 } 
	{ UL_inv_ce0 sc_out sc_logic 1 signal 0 } 
	{ UL_inv_q0 sc_in sc_lv 32 signal 0 } 
	{ P_0_read sc_in sc_lv 32 signal 1 } 
	{ P_1_read sc_in sc_lv 32 signal 2 } 
	{ P_2_read sc_in sc_lv 32 signal 3 } 
	{ A_inv_address0 sc_out sc_lv 4 signal 4 } 
	{ A_inv_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_inv_we0 sc_out sc_logic 1 signal 4 } 
	{ A_inv_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "UL_inv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "UL_inv", "role": "address0" }} , 
 	{ "name": "UL_inv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "UL_inv", "role": "ce0" }} , 
 	{ "name": "UL_inv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "UL_inv", "role": "q0" }} , 
 	{ "name": "P_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_0_read", "role": "default" }} , 
 	{ "name": "P_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_1_read", "role": "default" }} , 
 	{ "name": "P_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_2_read", "role": "default" }} , 
 	{ "name": "A_inv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_inv", "role": "address0" }} , 
 	{ "name": "A_inv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_inv", "role": "ce0" }} , 
 	{ "name": "A_inv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_inv", "role": "we0" }} , 
 	{ "name": "A_inv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_inv", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "final_perm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "UL_inv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_inv", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	final_perm {
		UL_inv {Type I LastRead 4 FirstWrite -1}
		P_0_read {Type I LastRead 0 FirstWrite -1}
		P_1_read {Type I LastRead 0 FirstWrite -1}
		P_2_read {Type I LastRead 0 FirstWrite -1}
		A_inv {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "43", "Max" : "43"}
	, {"Name" : "Interval", "Min" : "43", "Max" : "43"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	UL_inv { ap_memory {  { UL_inv_address0 mem_address 1 4 }  { UL_inv_ce0 mem_ce 1 1 }  { UL_inv_q0 mem_dout 0 32 } } }
	P_0_read { ap_none {  { P_0_read in_data 0 32 } } }
	P_1_read { ap_none {  { P_1_read in_data 0 32 } } }
	P_2_read { ap_none {  { P_2_read in_data 0 32 } } }
	A_inv { ap_memory {  { A_inv_address0 mem_address 1 4 }  { A_inv_ce0 mem_ce 1 1 }  { A_inv_we0 mem_we 1 1 }  { A_inv_d0 mem_din 1 32 } } }
}
