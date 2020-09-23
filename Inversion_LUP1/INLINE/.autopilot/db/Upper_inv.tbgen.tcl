set moduleName Upper_inv
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
set C_modelName {Upper_inv}
set C_modelType { void 0 }
set C_modelArgList {
	{ U float 32 regular {array 9 { 1 3 } 1 1 }  }
	{ U_inv float 32 regular {array 9 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "U", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "U_inv", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ U_address0 sc_out sc_lv 4 signal 0 } 
	{ U_ce0 sc_out sc_logic 1 signal 0 } 
	{ U_q0 sc_in sc_lv 32 signal 0 } 
	{ U_inv_address0 sc_out sc_lv 4 signal 1 } 
	{ U_inv_ce0 sc_out sc_logic 1 signal 1 } 
	{ U_inv_we0 sc_out sc_logic 1 signal 1 } 
	{ U_inv_d0 sc_out sc_lv 32 signal 1 } 
	{ U_inv_q0 sc_in sc_lv 32 signal 1 } 
	{ U_inv_address1 sc_out sc_lv 4 signal 1 } 
	{ U_inv_ce1 sc_out sc_logic 1 signal 1 } 
	{ U_inv_we1 sc_out sc_logic 1 signal 1 } 
	{ U_inv_d1 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "U_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "U", "role": "address0" }} , 
 	{ "name": "U_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "ce0" }} , 
 	{ "name": "U_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "q0" }} , 
 	{ "name": "U_inv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "U_inv", "role": "address0" }} , 
 	{ "name": "U_inv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U_inv", "role": "ce0" }} , 
 	{ "name": "U_inv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U_inv", "role": "we0" }} , 
 	{ "name": "U_inv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U_inv", "role": "d0" }} , 
 	{ "name": "U_inv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U_inv", "role": "q0" }} , 
 	{ "name": "U_inv_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "U_inv", "role": "address1" }} , 
 	{ "name": "U_inv_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U_inv", "role": "ce1" }} , 
 	{ "name": "U_inv_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U_inv", "role": "we1" }} , 
 	{ "name": "U_inv_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U_inv", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "Upper_inv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119", "EstimateLatencyMax" : "263",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "U", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "U_inv", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inverse_top_fadd_bkb_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inverse_top_fmul_cud_U12", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inverse_top_fdiv_dEe_U13", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Upper_inv {
		U {Type I LastRead 8 FirstWrite -1}
		U_inv {Type IO LastRead 7 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "119", "Max" : "263"}
	, {"Name" : "Interval", "Min" : "119", "Max" : "263"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	U { ap_memory {  { U_address0 mem_address 1 4 }  { U_ce0 mem_ce 1 1 }  { U_q0 mem_dout 0 32 } } }
	U_inv { ap_memory {  { U_inv_address0 mem_address 1 4 }  { U_inv_ce0 mem_ce 1 1 }  { U_inv_we0 mem_we 1 1 }  { U_inv_d0 mem_din 1 32 }  { U_inv_q0 mem_dout 0 32 }  { U_inv_address1 MemPortADDR2 1 4 }  { U_inv_ce1 MemPortCE2 1 1 }  { U_inv_we1 MemPortWE2 1 1 }  { U_inv_d1 MemPortDIN2 1 32 } } }
}
