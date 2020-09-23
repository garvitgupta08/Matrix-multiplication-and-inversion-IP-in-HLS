// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      matrixmult
`define AUTOTB_DUT_INST AESL_inst_matrixmult
`define AUTOTB_TOP      apatb_matrixmult_top
`define AUTOTB_LAT_RESULT_FILE "matrixmult.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "matrixmult.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_matrixmult_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_A_0 AESL_automem_A_0
`define AESL_MEM_INST_A_0 mem_inst_A_0
`define AESL_MEM_A_1 AESL_automem_A_1
`define AESL_MEM_INST_A_1 mem_inst_A_1
`define AESL_MEM_B_0 AESL_automem_B_0
`define AESL_MEM_INST_B_0 mem_inst_B_0
`define AESL_MEM_B_1 AESL_automem_B_1
`define AESL_MEM_INST_B_1 mem_inst_B_1
`define AESL_MEM_res AESL_automem_res
`define AESL_MEM_INST_res mem_inst_res
`define AUTOTB_TVIN_A_0  "../tv/cdatafile/c.matrixmult.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1  "../tv/cdatafile/c.matrixmult.autotvin_A_1.dat"
`define AUTOTB_TVIN_B_0  "../tv/cdatafile/c.matrixmult.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1  "../tv/cdatafile/c.matrixmult.autotvin_B_1.dat"
`define AUTOTB_TVIN_res  "../tv/cdatafile/c.matrixmult.autotvin_res.dat"
`define AUTOTB_TVIN_A_0_out_wrapc  "../tv/rtldatafile/rtl.matrixmult.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1_out_wrapc  "../tv/rtldatafile/rtl.matrixmult.autotvin_A_1.dat"
`define AUTOTB_TVIN_B_0_out_wrapc  "../tv/rtldatafile/rtl.matrixmult.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1_out_wrapc  "../tv/rtldatafile/rtl.matrixmult.autotvin_B_1.dat"
`define AUTOTB_TVIN_res_out_wrapc  "../tv/rtldatafile/rtl.matrixmult.autotvin_res.dat"
`define AUTOTB_TVOUT_res  "../tv/cdatafile/c.matrixmult.autotvout_res.dat"
`define AUTOTB_TVOUT_res_out_wrapc  "../tv/rtldatafile/rtl.matrixmult.autotvout_res.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 42;
parameter LENGTH_A_0 = 8;
parameter LENGTH_A_1 = 8;
parameter LENGTH_B_0 = 8;
parameter LENGTH_B_1 = 8;
parameter LENGTH_res = 16;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [2 : 0] A_0_address0;
wire  A_0_ce0;
wire [31 : 0] A_0_q0;
wire [2 : 0] A_0_address1;
wire  A_0_ce1;
wire [31 : 0] A_0_q1;
wire [2 : 0] A_1_address0;
wire  A_1_ce0;
wire [31 : 0] A_1_q0;
wire [2 : 0] A_1_address1;
wire  A_1_ce1;
wire [31 : 0] A_1_q1;
wire [2 : 0] B_0_address0;
wire  B_0_ce0;
wire [31 : 0] B_0_q0;
wire [2 : 0] B_0_address1;
wire  B_0_ce1;
wire [31 : 0] B_0_q1;
wire [2 : 0] B_1_address0;
wire  B_1_ce0;
wire [31 : 0] B_1_q0;
wire [2 : 0] B_1_address1;
wire  B_1_ce1;
wire [31 : 0] B_1_q1;
wire [3 : 0] res_address0;
wire  res_ce0;
wire  res_we0;
wire [31 : 0] res_d0;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .A_0_address0(A_0_address0),
    .A_0_ce0(A_0_ce0),
    .A_0_q0(A_0_q0),
    .A_0_address1(A_0_address1),
    .A_0_ce1(A_0_ce1),
    .A_0_q1(A_0_q1),
    .A_1_address0(A_1_address0),
    .A_1_ce0(A_1_ce0),
    .A_1_q0(A_1_q0),
    .A_1_address1(A_1_address1),
    .A_1_ce1(A_1_ce1),
    .A_1_q1(A_1_q1),
    .B_0_address0(B_0_address0),
    .B_0_ce0(B_0_ce0),
    .B_0_q0(B_0_q0),
    .B_0_address1(B_0_address1),
    .B_0_ce1(B_0_ce1),
    .B_0_q1(B_0_q1),
    .B_1_address0(B_1_address0),
    .B_1_ce0(B_1_ce0),
    .B_1_q0(B_1_q0),
    .B_1_address1(B_1_address1),
    .B_1_ce1(B_1_ce1),
    .B_1_q1(B_1_q1),
    .res_address0(res_address0),
    .res_ce0(res_ce0),
    .res_we0(res_we0),
    .res_d0(res_d0));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arrayA_0 Instantiation--------------

// The input and output of arrayA_0
wire    arrayA_0_ce0, arrayA_0_ce1;
wire    arrayA_0_we0, arrayA_0_we1;
wire    [2 : 0]    arrayA_0_address0, arrayA_0_address1;
wire    [31 : 0]    arrayA_0_din0, arrayA_0_din1;
wire    [31 : 0]    arrayA_0_dout0, arrayA_0_dout1;
wire    arrayA_0_ready;
wire    arrayA_0_done;

`AESL_MEM_A_0 `AESL_MEM_INST_A_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_0_ce0),
    .we0        (arrayA_0_we0),
    .address0   (arrayA_0_address0),
    .din0       (arrayA_0_din0),
    .dout0      (arrayA_0_dout0),
    .ce1        (arrayA_0_ce1),
    .we1        (arrayA_0_we1),
    .address1   (arrayA_0_address1),
    .din1       (arrayA_0_din1),
    .dout1      (arrayA_0_dout1),
    .ready      (arrayA_0_ready),
    .done    (arrayA_0_done)
);

// Assignment between dut and arrayA_0
assign arrayA_0_address0 = A_0_address0;
assign arrayA_0_ce0 = A_0_ce0;
assign A_0_q0 = arrayA_0_dout0;
assign arrayA_0_we0 = 0;
assign arrayA_0_din0 = 0;
assign arrayA_0_address1 = A_0_address1;
assign arrayA_0_ce1 = A_0_ce1;
assign A_0_q1 = arrayA_0_dout1;
assign arrayA_0_we1 = 0;
assign arrayA_0_din1 = 0;
assign arrayA_0_ready=    ready;
assign arrayA_0_done = 0;


//------------------------arrayA_1 Instantiation--------------

// The input and output of arrayA_1
wire    arrayA_1_ce0, arrayA_1_ce1;
wire    arrayA_1_we0, arrayA_1_we1;
wire    [2 : 0]    arrayA_1_address0, arrayA_1_address1;
wire    [31 : 0]    arrayA_1_din0, arrayA_1_din1;
wire    [31 : 0]    arrayA_1_dout0, arrayA_1_dout1;
wire    arrayA_1_ready;
wire    arrayA_1_done;

`AESL_MEM_A_1 `AESL_MEM_INST_A_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayA_1_ce0),
    .we0        (arrayA_1_we0),
    .address0   (arrayA_1_address0),
    .din0       (arrayA_1_din0),
    .dout0      (arrayA_1_dout0),
    .ce1        (arrayA_1_ce1),
    .we1        (arrayA_1_we1),
    .address1   (arrayA_1_address1),
    .din1       (arrayA_1_din1),
    .dout1      (arrayA_1_dout1),
    .ready      (arrayA_1_ready),
    .done    (arrayA_1_done)
);

// Assignment between dut and arrayA_1
assign arrayA_1_address0 = A_1_address0;
assign arrayA_1_ce0 = A_1_ce0;
assign A_1_q0 = arrayA_1_dout0;
assign arrayA_1_we0 = 0;
assign arrayA_1_din0 = 0;
assign arrayA_1_address1 = A_1_address1;
assign arrayA_1_ce1 = A_1_ce1;
assign A_1_q1 = arrayA_1_dout1;
assign arrayA_1_we1 = 0;
assign arrayA_1_din1 = 0;
assign arrayA_1_ready=    ready;
assign arrayA_1_done = 0;


//------------------------arrayB_0 Instantiation--------------

// The input and output of arrayB_0
wire    arrayB_0_ce0, arrayB_0_ce1;
wire    arrayB_0_we0, arrayB_0_we1;
wire    [2 : 0]    arrayB_0_address0, arrayB_0_address1;
wire    [31 : 0]    arrayB_0_din0, arrayB_0_din1;
wire    [31 : 0]    arrayB_0_dout0, arrayB_0_dout1;
wire    arrayB_0_ready;
wire    arrayB_0_done;

`AESL_MEM_B_0 `AESL_MEM_INST_B_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_0_ce0),
    .we0        (arrayB_0_we0),
    .address0   (arrayB_0_address0),
    .din0       (arrayB_0_din0),
    .dout0      (arrayB_0_dout0),
    .ce1        (arrayB_0_ce1),
    .we1        (arrayB_0_we1),
    .address1   (arrayB_0_address1),
    .din1       (arrayB_0_din1),
    .dout1      (arrayB_0_dout1),
    .ready      (arrayB_0_ready),
    .done    (arrayB_0_done)
);

// Assignment between dut and arrayB_0
assign arrayB_0_address0 = B_0_address0;
assign arrayB_0_ce0 = B_0_ce0;
assign B_0_q0 = arrayB_0_dout0;
assign arrayB_0_we0 = 0;
assign arrayB_0_din0 = 0;
assign arrayB_0_address1 = B_0_address1;
assign arrayB_0_ce1 = B_0_ce1;
assign B_0_q1 = arrayB_0_dout1;
assign arrayB_0_we1 = 0;
assign arrayB_0_din1 = 0;
assign arrayB_0_ready=    ready;
assign arrayB_0_done = 0;


//------------------------arrayB_1 Instantiation--------------

// The input and output of arrayB_1
wire    arrayB_1_ce0, arrayB_1_ce1;
wire    arrayB_1_we0, arrayB_1_we1;
wire    [2 : 0]    arrayB_1_address0, arrayB_1_address1;
wire    [31 : 0]    arrayB_1_din0, arrayB_1_din1;
wire    [31 : 0]    arrayB_1_dout0, arrayB_1_dout1;
wire    arrayB_1_ready;
wire    arrayB_1_done;

`AESL_MEM_B_1 `AESL_MEM_INST_B_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayB_1_ce0),
    .we0        (arrayB_1_we0),
    .address0   (arrayB_1_address0),
    .din0       (arrayB_1_din0),
    .dout0      (arrayB_1_dout0),
    .ce1        (arrayB_1_ce1),
    .we1        (arrayB_1_we1),
    .address1   (arrayB_1_address1),
    .din1       (arrayB_1_din1),
    .dout1      (arrayB_1_dout1),
    .ready      (arrayB_1_ready),
    .done    (arrayB_1_done)
);

// Assignment between dut and arrayB_1
assign arrayB_1_address0 = B_1_address0;
assign arrayB_1_ce0 = B_1_ce0;
assign B_1_q0 = arrayB_1_dout0;
assign arrayB_1_we0 = 0;
assign arrayB_1_din0 = 0;
assign arrayB_1_address1 = B_1_address1;
assign arrayB_1_ce1 = B_1_ce1;
assign B_1_q1 = arrayB_1_dout1;
assign arrayB_1_we1 = 0;
assign arrayB_1_din1 = 0;
assign arrayB_1_ready=    ready;
assign arrayB_1_done = 0;


//------------------------arrayres Instantiation--------------

// The input and output of arrayres
wire    arrayres_ce0, arrayres_ce1;
wire    arrayres_we0, arrayres_we1;
wire    [3 : 0]    arrayres_address0, arrayres_address1;
wire    [31 : 0]    arrayres_din0, arrayres_din1;
wire    [31 : 0]    arrayres_dout0, arrayres_dout1;
wire    arrayres_ready;
wire    arrayres_done;

`AESL_MEM_res `AESL_MEM_INST_res(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayres_ce0),
    .we0        (arrayres_we0),
    .address0   (arrayres_address0),
    .din0       (arrayres_din0),
    .dout0      (arrayres_dout0),
    .ce1        (arrayres_ce1),
    .we1        (arrayres_we1),
    .address1   (arrayres_address1),
    .din1       (arrayres_din1),
    .dout1      (arrayres_dout1),
    .ready      (arrayres_ready),
    .done    (arrayres_done)
);

// Assignment between dut and arrayres
assign arrayres_address0 = res_address0;
assign arrayres_ce0 = res_ce0;
assign arrayres_we0 = res_we0;
assign arrayres_din0 = res_d0;
assign arrayres_we1 = 0;
assign arrayres_din1 = 0;
assign arrayres_ready= ready_initial | arrayres_done;
assign arrayres_done =    AESL_done_delay;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A_0;
reg [31:0] size_A_0;
reg [31:0] size_A_0_backup;
reg end_A_1;
reg [31:0] size_A_1;
reg [31:0] size_A_1_backup;
reg end_B_0;
reg [31:0] size_B_0;
reg [31:0] size_B_0_backup;
reg end_B_1;
reg [31:0] size_B_1;
reg [31:0] size_B_1_backup;
reg end_res;
reg [31:0] size_res;
reg [31:0] size_res_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_res;

initial begin : dump_tvout_runtime_sign_res
    integer fp;
    dump_tvout_finish_res = 0;
    fp = $fopen(`AUTOTB_TVOUT_res_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_res_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_res_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_res_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_res = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
