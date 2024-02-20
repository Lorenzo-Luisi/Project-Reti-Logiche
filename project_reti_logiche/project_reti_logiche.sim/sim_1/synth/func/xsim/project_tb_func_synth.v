// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep  5 23:59:17 2023
// Host        : DESKTOP-2LDQ1UK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/lorenzo/Desktop/progetto reti
//               logiche/project_reti_logiche/project_reti_logiche.sim/sim_1/synth/func/xsim/project_tb_func_synth.v}
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_rst,
    i_start,
    i_w,
    o_z0,
    o_z1,
    o_z2,
    o_z3,
    o_done,
    o_mem_addr,
    i_mem_data,
    o_mem_we,
    o_mem_en);
  input i_clk;
  input i_rst;
  input i_start;
  input i_w;
  output [7:0]o_z0;
  output [7:0]o_z1;
  output [7:0]o_z2;
  output [7:0]o_z3;
  output o_done;
  output [15:0]o_mem_addr;
  input [7:0]i_mem_data;
  output o_mem_we;
  output o_mem_en;

  wire \FSM_sequential_cur_state[0]_i_1_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_1_n_0 ;
  wire \FSM_sequential_cur_state[2]_i_1_n_0 ;
  wire [2:0]cur_state;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_mem_data;
  wire [7:0]i_mem_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire i_w;
  wire i_w_IBUF;
  wire o_done;
  wire o_done_OBUF;
  wire [15:0]o_mem_addr;
  wire [15:0]o_mem_addr_OBUF;
  wire o_mem_en;
  wire o_mem_en_OBUF;
  wire o_mem_we;
  wire [7:0]o_z0;
  wire [7:0]o_z0_OBUF;
  wire [7:0]o_z1;
  wire [7:0]o_z1_OBUF;
  wire [7:0]o_z2;
  wire [7:0]o_z2_OBUF;
  wire [7:0]o_z3;
  wire [7:0]o_z3_OBUF;
  wire [1:0]selector;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hC11E)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(i_start_IBUF),
        .I1(cur_state[2]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .O(\FSM_sequential_cur_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF508)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[0]),
        .I1(i_start_IBUF),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .O(\FSM_sequential_cur_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[2]),
        .I2(cur_state[1]),
        .O(\FSM_sequential_cur_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s4:100,s5:101,s3:011,s2:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_cur_state[0]_i_1_n_0 ),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s4:100,s5:101,s3:011,s2:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_cur_state[1]_i_1_n_0 ),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s4:100,s5:101,s3:011,s2:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_sequential_cur_state[2]_i_1_n_0 ),
        .Q(cur_state[2]));
  shift_reg_sp16_reverse SHIFT_REG_DATA
       (.AR(i_rst_IBUF),
        .CLK(i_clk_IBUF_BUFG),
        .cur_state(cur_state),
        .i_w_IBUF(i_w_IBUF),
        .o_mem_addr_OBUF(o_mem_addr_OBUF));
  shift_reg_sp2 SHIFT_REG_SORT
       (.AR(i_rst_IBUF),
        .CLK(i_clk_IBUF_BUFG),
        .cur_state(cur_state),
        .i_w_IBUF(i_w_IBUF),
        .selector(selector));
  sorter SORT_OUTPUT
       (.AR(i_rst_IBUF),
        .CLK(i_clk_IBUF_BUFG),
        .D(i_mem_data_IBUF),
        .cur_state(cur_state),
        .o_z0_OBUF(o_z0_OBUF),
        .o_z1_OBUF(o_z1_OBUF),
        .o_z2_OBUF(o_z2_OBUF),
        .o_z3_OBUF(o_z3_OBUF),
        .selector(selector));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_mem_data_IBUF[0]_inst 
       (.I(i_mem_data[0]),
        .O(i_mem_data_IBUF[0]));
  IBUF \i_mem_data_IBUF[1]_inst 
       (.I(i_mem_data[1]),
        .O(i_mem_data_IBUF[1]));
  IBUF \i_mem_data_IBUF[2]_inst 
       (.I(i_mem_data[2]),
        .O(i_mem_data_IBUF[2]));
  IBUF \i_mem_data_IBUF[3]_inst 
       (.I(i_mem_data[3]),
        .O(i_mem_data_IBUF[3]));
  IBUF \i_mem_data_IBUF[4]_inst 
       (.I(i_mem_data[4]),
        .O(i_mem_data_IBUF[4]));
  IBUF \i_mem_data_IBUF[5]_inst 
       (.I(i_mem_data[5]),
        .O(i_mem_data_IBUF[5]));
  IBUF \i_mem_data_IBUF[6]_inst 
       (.I(i_mem_data[6]),
        .O(i_mem_data_IBUF[6]));
  IBUF \i_mem_data_IBUF[7]_inst 
       (.I(i_mem_data[7]),
        .O(i_mem_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  IBUF i_w_IBUF_inst
       (.I(i_w),
        .O(i_w_IBUF));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  LUT3 #(
    .INIT(8'h40)) 
    o_done_OBUF_inst_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .O(o_done_OBUF));
  OBUF \o_mem_addr_OBUF[0]_inst 
       (.I(o_mem_addr_OBUF[0]),
        .O(o_mem_addr[0]));
  OBUF \o_mem_addr_OBUF[10]_inst 
       (.I(o_mem_addr_OBUF[10]),
        .O(o_mem_addr[10]));
  OBUF \o_mem_addr_OBUF[11]_inst 
       (.I(o_mem_addr_OBUF[11]),
        .O(o_mem_addr[11]));
  OBUF \o_mem_addr_OBUF[12]_inst 
       (.I(o_mem_addr_OBUF[12]),
        .O(o_mem_addr[12]));
  OBUF \o_mem_addr_OBUF[13]_inst 
       (.I(o_mem_addr_OBUF[13]),
        .O(o_mem_addr[13]));
  OBUF \o_mem_addr_OBUF[14]_inst 
       (.I(o_mem_addr_OBUF[14]),
        .O(o_mem_addr[14]));
  OBUF \o_mem_addr_OBUF[15]_inst 
       (.I(o_mem_addr_OBUF[15]),
        .O(o_mem_addr[15]));
  OBUF \o_mem_addr_OBUF[1]_inst 
       (.I(o_mem_addr_OBUF[1]),
        .O(o_mem_addr[1]));
  OBUF \o_mem_addr_OBUF[2]_inst 
       (.I(o_mem_addr_OBUF[2]),
        .O(o_mem_addr[2]));
  OBUF \o_mem_addr_OBUF[3]_inst 
       (.I(o_mem_addr_OBUF[3]),
        .O(o_mem_addr[3]));
  OBUF \o_mem_addr_OBUF[4]_inst 
       (.I(o_mem_addr_OBUF[4]),
        .O(o_mem_addr[4]));
  OBUF \o_mem_addr_OBUF[5]_inst 
       (.I(o_mem_addr_OBUF[5]),
        .O(o_mem_addr[5]));
  OBUF \o_mem_addr_OBUF[6]_inst 
       (.I(o_mem_addr_OBUF[6]),
        .O(o_mem_addr[6]));
  OBUF \o_mem_addr_OBUF[7]_inst 
       (.I(o_mem_addr_OBUF[7]),
        .O(o_mem_addr[7]));
  OBUF \o_mem_addr_OBUF[8]_inst 
       (.I(o_mem_addr_OBUF[8]),
        .O(o_mem_addr[8]));
  OBUF \o_mem_addr_OBUF[9]_inst 
       (.I(o_mem_addr_OBUF[9]),
        .O(o_mem_addr[9]));
  OBUF o_mem_en_OBUF_inst
       (.I(o_mem_en_OBUF),
        .O(o_mem_en));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    o_mem_en_OBUF_inst_i_1
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .O(o_mem_en_OBUF));
  OBUF o_mem_we_OBUF_inst
       (.I(1'b0),
        .O(o_mem_we));
  OBUF \o_z0_OBUF[0]_inst 
       (.I(o_z0_OBUF[0]),
        .O(o_z0[0]));
  OBUF \o_z0_OBUF[1]_inst 
       (.I(o_z0_OBUF[1]),
        .O(o_z0[1]));
  OBUF \o_z0_OBUF[2]_inst 
       (.I(o_z0_OBUF[2]),
        .O(o_z0[2]));
  OBUF \o_z0_OBUF[3]_inst 
       (.I(o_z0_OBUF[3]),
        .O(o_z0[3]));
  OBUF \o_z0_OBUF[4]_inst 
       (.I(o_z0_OBUF[4]),
        .O(o_z0[4]));
  OBUF \o_z0_OBUF[5]_inst 
       (.I(o_z0_OBUF[5]),
        .O(o_z0[5]));
  OBUF \o_z0_OBUF[6]_inst 
       (.I(o_z0_OBUF[6]),
        .O(o_z0[6]));
  OBUF \o_z0_OBUF[7]_inst 
       (.I(o_z0_OBUF[7]),
        .O(o_z0[7]));
  OBUF \o_z1_OBUF[0]_inst 
       (.I(o_z1_OBUF[0]),
        .O(o_z1[0]));
  OBUF \o_z1_OBUF[1]_inst 
       (.I(o_z1_OBUF[1]),
        .O(o_z1[1]));
  OBUF \o_z1_OBUF[2]_inst 
       (.I(o_z1_OBUF[2]),
        .O(o_z1[2]));
  OBUF \o_z1_OBUF[3]_inst 
       (.I(o_z1_OBUF[3]),
        .O(o_z1[3]));
  OBUF \o_z1_OBUF[4]_inst 
       (.I(o_z1_OBUF[4]),
        .O(o_z1[4]));
  OBUF \o_z1_OBUF[5]_inst 
       (.I(o_z1_OBUF[5]),
        .O(o_z1[5]));
  OBUF \o_z1_OBUF[6]_inst 
       (.I(o_z1_OBUF[6]),
        .O(o_z1[6]));
  OBUF \o_z1_OBUF[7]_inst 
       (.I(o_z1_OBUF[7]),
        .O(o_z1[7]));
  OBUF \o_z2_OBUF[0]_inst 
       (.I(o_z2_OBUF[0]),
        .O(o_z2[0]));
  OBUF \o_z2_OBUF[1]_inst 
       (.I(o_z2_OBUF[1]),
        .O(o_z2[1]));
  OBUF \o_z2_OBUF[2]_inst 
       (.I(o_z2_OBUF[2]),
        .O(o_z2[2]));
  OBUF \o_z2_OBUF[3]_inst 
       (.I(o_z2_OBUF[3]),
        .O(o_z2[3]));
  OBUF \o_z2_OBUF[4]_inst 
       (.I(o_z2_OBUF[4]),
        .O(o_z2[4]));
  OBUF \o_z2_OBUF[5]_inst 
       (.I(o_z2_OBUF[5]),
        .O(o_z2[5]));
  OBUF \o_z2_OBUF[6]_inst 
       (.I(o_z2_OBUF[6]),
        .O(o_z2[6]));
  OBUF \o_z2_OBUF[7]_inst 
       (.I(o_z2_OBUF[7]),
        .O(o_z2[7]));
  OBUF \o_z3_OBUF[0]_inst 
       (.I(o_z3_OBUF[0]),
        .O(o_z3[0]));
  OBUF \o_z3_OBUF[1]_inst 
       (.I(o_z3_OBUF[1]),
        .O(o_z3[1]));
  OBUF \o_z3_OBUF[2]_inst 
       (.I(o_z3_OBUF[2]),
        .O(o_z3[2]));
  OBUF \o_z3_OBUF[3]_inst 
       (.I(o_z3_OBUF[3]),
        .O(o_z3[3]));
  OBUF \o_z3_OBUF[4]_inst 
       (.I(o_z3_OBUF[4]),
        .O(o_z3[4]));
  OBUF \o_z3_OBUF[5]_inst 
       (.I(o_z3_OBUF[5]),
        .O(o_z3[5]));
  OBUF \o_z3_OBUF[6]_inst 
       (.I(o_z3_OBUF[6]),
        .O(o_z3[6]));
  OBUF \o_z3_OBUF[7]_inst 
       (.I(o_z3_OBUF[7]),
        .O(o_z3[7]));
endmodule

module shift_reg_sp16_reverse
   (o_mem_addr_OBUF,
    i_w_IBUF,
    CLK,
    cur_state,
    AR);
  output [15:0]o_mem_addr_OBUF;
  input i_w_IBUF;
  input CLK;
  input [2:0]cur_state;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]cur_state;
  wire i_w_IBUF;
  wire [15:0]o_mem_addr_OBUF;
  wire o_reg19;
  wire o_reg19_i_2_n_0;
  wire r3_load;

  FDCE #(
    .INIT(1'b0)) 
    o_reg10_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[7]),
        .Q(o_mem_addr_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg11_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[6]),
        .Q(o_mem_addr_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg12_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[5]),
        .Q(o_mem_addr_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg13_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[4]),
        .Q(o_mem_addr_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg14_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[3]),
        .Q(o_mem_addr_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg15_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[2]),
        .Q(o_mem_addr_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg16_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[1]),
        .Q(o_mem_addr_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg17_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[0]),
        .Q(o_mem_addr_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg18_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_reg19),
        .Q(o_mem_addr_OBUF[0]));
  LUT3 #(
    .INIT(8'h02)) 
    o_reg19_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .I2(cur_state[0]),
        .O(r3_load));
  LUT4 #(
    .INIT(16'hAAEA)) 
    o_reg19_i_2
       (.I0(AR),
        .I1(cur_state[2]),
        .I2(cur_state[0]),
        .I3(cur_state[1]),
        .O(o_reg19_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_reg19_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(i_w_IBUF),
        .Q(o_reg19));
  FDCE #(
    .INIT(1'b0)) 
    o_reg3_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[14]),
        .Q(o_mem_addr_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg4_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[13]),
        .Q(o_mem_addr_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg5_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[12]),
        .Q(o_mem_addr_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg6_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[11]),
        .Q(o_mem_addr_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg7_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[10]),
        .Q(o_mem_addr_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg8_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[9]),
        .Q(o_mem_addr_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    o_reg9_reg
       (.C(CLK),
        .CE(r3_load),
        .CLR(o_reg19_i_2_n_0),
        .D(o_mem_addr_OBUF[8]),
        .Q(o_mem_addr_OBUF[9]));
endmodule

module shift_reg_sp2
   (selector,
    i_w_IBUF,
    CLK,
    AR,
    cur_state);
  output [1:0]selector;
  input i_w_IBUF;
  input CLK;
  input [0:0]AR;
  input [2:0]cur_state;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]cur_state;
  wire i_w_IBUF;
  wire o_reg2_i_1_n_0;
  wire r1_load;
  wire [1:0]selector;

  LUT2 #(
    .INIT(4'h1)) 
    o_reg1_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .O(r1_load));
  FDCE #(
    .INIT(1'b0)) 
    o_reg1_reg
       (.C(CLK),
        .CE(r1_load),
        .CLR(AR),
        .D(i_w_IBUF),
        .Q(selector[0]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    o_reg2_i_1
       (.I0(selector[0]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(selector[1]),
        .O(o_reg2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_reg2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(o_reg2_i_1_n_0),
        .Q(selector[1]));
endmodule

module sorter
   (o_z3_OBUF,
    o_z2_OBUF,
    o_z1_OBUF,
    o_z0_OBUF,
    selector,
    cur_state,
    D,
    CLK,
    AR);
  output [7:0]o_z3_OBUF;
  output [7:0]o_z2_OBUF;
  output [7:0]o_z1_OBUF;
  output [7:0]o_z0_OBUF;
  input [1:0]selector;
  input [2:0]cur_state;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [2:0]cur_state;
  wire [7:0]o_regZ0;
  wire o_regZ00__0;
  wire [7:0]o_regZ1;
  wire o_regZ10__0;
  wire [7:0]o_regZ2;
  wire o_regZ20__0;
  wire [7:0]o_regZ3;
  wire o_regZ30__0;
  wire [7:0]o_z0_OBUF;
  wire [7:0]o_z1_OBUF;
  wire [7:0]o_z2_OBUF;
  wire [7:0]o_z3_OBUF;
  wire [1:0]selector;

  LUT5 #(
    .INIT(32'h00010000)) 
    o_regZ00
       (.I0(selector[1]),
        .I1(selector[0]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .I4(cur_state[2]),
        .O(o_regZ00__0));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[0] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[0]),
        .Q(o_regZ0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[1] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[1]),
        .Q(o_regZ0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[2] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[2]),
        .Q(o_regZ0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[3] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[3]),
        .Q(o_regZ0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[4] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[4]),
        .Q(o_regZ0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[5] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[5]),
        .Q(o_regZ0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[6] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[6]),
        .Q(o_regZ0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ0_reg[7] 
       (.C(CLK),
        .CE(o_regZ00__0),
        .CLR(AR),
        .D(D[7]),
        .Q(o_regZ0[7]));
  LUT5 #(
    .INIT(32'h00040000)) 
    o_regZ10
       (.I0(selector[1]),
        .I1(selector[0]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .I4(cur_state[2]),
        .O(o_regZ10__0));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[0] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[0]),
        .Q(o_regZ1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[1] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[1]),
        .Q(o_regZ1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[2] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[2]),
        .Q(o_regZ1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[3] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[3]),
        .Q(o_regZ1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[4] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[4]),
        .Q(o_regZ1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[5] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[5]),
        .Q(o_regZ1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[6] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[6]),
        .Q(o_regZ1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ1_reg[7] 
       (.C(CLK),
        .CE(o_regZ10__0),
        .CLR(AR),
        .D(D[7]),
        .Q(o_regZ1[7]));
  LUT5 #(
    .INIT(32'h00040000)) 
    o_regZ20
       (.I0(selector[0]),
        .I1(selector[1]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .I4(cur_state[2]),
        .O(o_regZ20__0));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[0] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[0]),
        .Q(o_regZ2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[1] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[1]),
        .Q(o_regZ2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[2] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[2]),
        .Q(o_regZ2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[3] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[3]),
        .Q(o_regZ2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[4] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[4]),
        .Q(o_regZ2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[5] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[5]),
        .Q(o_regZ2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[6] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[6]),
        .Q(o_regZ2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ2_reg[7] 
       (.C(CLK),
        .CE(o_regZ20__0),
        .CLR(AR),
        .D(D[7]),
        .Q(o_regZ2[7]));
  LUT5 #(
    .INIT(32'h00080000)) 
    o_regZ30
       (.I0(selector[1]),
        .I1(selector[0]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .I4(cur_state[2]),
        .O(o_regZ30__0));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[0] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[0]),
        .Q(o_regZ3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[1] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[1]),
        .Q(o_regZ3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[2] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[2]),
        .Q(o_regZ3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[3] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[3]),
        .Q(o_regZ3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[4] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[4]),
        .Q(o_regZ3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[5] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[5]),
        .Q(o_regZ3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[6] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[6]),
        .Q(o_regZ3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \o_regZ3_reg[7] 
       (.C(CLK),
        .CE(o_regZ30__0),
        .CLR(AR),
        .D(D[7]),
        .Q(o_regZ3[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[0]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[0]),
        .O(o_z0_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[1]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[1]),
        .O(o_z0_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[2]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[2]),
        .O(o_z0_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[3]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[3]),
        .O(o_z0_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[4]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[4]),
        .O(o_z0_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[5]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[5]),
        .O(o_z0_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[6]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[6]),
        .O(o_z0_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z0_OBUF[7]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ0[7]),
        .O(o_z0_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[0]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[0]),
        .O(o_z1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[1]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[1]),
        .O(o_z1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[2]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[2]),
        .O(o_z1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[3]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[3]),
        .O(o_z1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[4]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[4]),
        .O(o_z1_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[5]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[5]),
        .O(o_z1_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[6]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[6]),
        .O(o_z1_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z1_OBUF[7]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ1[7]),
        .O(o_z1_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[0]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[0]),
        .O(o_z2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[1]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[1]),
        .O(o_z2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[2]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[2]),
        .O(o_z2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[3]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[3]),
        .O(o_z2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[4]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[4]),
        .O(o_z2_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[5]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[5]),
        .O(o_z2_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[6]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[6]),
        .O(o_z2_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z2_OBUF[7]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ2[7]),
        .O(o_z2_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[0]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[0]),
        .O(o_z3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[1]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[1]),
        .O(o_z3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[2]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[2]),
        .O(o_z3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[3]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[3]),
        .O(o_z3_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[4]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[4]),
        .O(o_z3_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[5]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[5]),
        .O(o_z3_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[6]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[6]),
        .O(o_z3_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_z3_OBUF[7]_inst_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(o_regZ3[7]),
        .O(o_z3_OBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
