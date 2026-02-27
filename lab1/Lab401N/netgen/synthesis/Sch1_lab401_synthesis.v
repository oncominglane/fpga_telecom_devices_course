////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Sch1_lab401_synthesis.v
// /___/   /\     Timestamp: Fri Feb 20 10:25:08 2026
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Sch1_lab401.ngc Sch1_lab401_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: Sch1_lab401.ngc
// Output file	: C:\FRKT\shev\Lab401N\netgen\synthesis\Sch1_lab401_synthesis.v
// # of Modules	: 1
// Design Name	: Sch1_lab401
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Sch1_lab401 (
  F50MHz, BTN0, BTN1, BTN3, AN, seg, LED, SW
);
  input F50MHz;
  input BTN0;
  input BTN1;
  input BTN3;
  output [3 : 0] AN;
  output [7 : 0] seg;
  output [7 : 0] LED;
  input [7 : 0] SW;
  wire AN_0_OBUF_20;
  wire AN_1_OBUF_21;
  wire AN_2_OBUF_22;
  wire AN_3_OBUF_23;
  wire BTN0_IBUF_25;
  wire BTN1_IBUF_27;
  wire BTN3_IBUF_29;
  wire F50MHz_IBUFG_31;
  wire N0;
  wire N1;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N2;
  wire N21;
  wire N22;
  wire N4;
  wire N6;
  wire N8;
  wire N9;
  wire \Result<0>1 ;
  wire \Result<0>2 ;
  wire \Result<0>3 ;
  wire \Result<0>4 ;
  wire \Result<1>1 ;
  wire \Result<1>2 ;
  wire \Result<1>3 ;
  wire \Result<1>4 ;
  wire \Result<2>1 ;
  wire \Result<2>2 ;
  wire \Result<2>3 ;
  wire \Result<3>1 ;
  wire \Result<3>2 ;
  wire \Result<3>3 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire SW_0_IBUF_97;
  wire SW_1_IBUF_98;
  wire SW_2_IBUF_99;
  wire SW_3_IBUF_100;
  wire SW_4_IBUF_101;
  wire SW_5_IBUF_102;
  wire SW_6_IBUF_103;
  wire SW_7_IBUF_104;
  wire \XLXI_1/DD2/Mmux_do_3_107 ;
  wire \XLXI_1/DD2/Mmux_do_31_108 ;
  wire \XLXI_1/DD2/Mmux_do_32_109 ;
  wire \XLXI_1/DD2/Mmux_do_33_110 ;
  wire \XLXI_1/DD2/Mmux_do_4_111 ;
  wire \XLXI_1/DD2/Mmux_do_41_112 ;
  wire \XLXI_1/DD2/Mmux_do_42_113 ;
  wire \XLXI_1/DD2/Mmux_do_43_114 ;
  wire \XLXI_1/DD5/Mcount_cb_ms_cy<0>_rt_116 ;
  wire \XLXI_1/DD5/ce1ms11_162 ;
  wire \XLXI_1/DD5/ce1ms24_163 ;
  wire \XLXI_1/DD5/ce1ms48_164 ;
  wire \XLXI_1/DD5/ce1ms61_165 ;
  wire \XLXI_1/DD5/ce1ms75_166 ;
  wire \XLXI_100/BTN_OUT_171 ;
  wire \XLXI_100/BTN_OUT_and00001 ;
  wire \XLXI_100/Q1_173 ;
  wire \XLXI_100/Q2_174 ;
  wire \XLXI_100/Q2_and0000 ;
  wire \XLXI_2/CEO_cmp_eq0000 ;
  wire \XLXI_2/CEO_cmp_eq000012_177 ;
  wire \XLXI_2/CEO_cmp_eq000037_178 ;
  wire \XLXI_2/Mcount_cb_Nms_cy<0>_rt_180 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_0 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_1 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_2 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_3 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_4 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_5 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_6 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_7 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_8 ;
  wire \XLXI_2/Mcount_cb_Nms_eqn_9 ;
  wire \XLXI_3/Mcount_Q1 ;
  wire \XLXI_3/Mcount_Q2 ;
  wire \XLXI_3/Mcount_Q3 ;
  wire \XLXI_3/Mcount_Q4 ;
  wire \XLXI_3/Mcount_Q_xor<3>1_SW0 ;
  wire \XLXI_3/Mcount_Q_xor<3>1_SW01_223 ;
  wire \XLXI_3/N11 ;
  wire \XLXI_3/Q_not0001 ;
  wire \XLXI_4/Q_or0000 ;
  wire \XLXI_5/Q_or0000 ;
  wire XLXN_4;
  wire XLXN_5;
  wire XLXN_59;
  wire XLXN_6;
  wire XLXN_68;
  wire XLXN_86;
  wire seg_0_OBUF_258;
  wire seg_1_OBUF_259;
  wire seg_2_OBUF_260;
  wire seg_3_OBUF_261;
  wire seg_4_OBUF_262;
  wire seg_5_OBUF_263;
  wire seg_6_OBUF_264;
  wire seg_7_OBUF_265;
  wire [15 : 0] Result;
  wire [1 : 0] \XLXI_1/DD1/q ;
  wire [14 : 0] \XLXI_1/DD5/Mcount_cb_ms_cy ;
  wire [15 : 1] \XLXI_1/DD5/Mcount_cb_ms_lut ;
  wire [15 : 0] \XLXI_1/DD5/cb_ms ;
  wire [3 : 0] \XLXI_1/Dig ;
  wire [8 : 0] \XLXI_2/Mcount_cb_Nms_cy ;
  wire [9 : 1] \XLXI_2/Mcount_cb_Nms_lut ;
  wire [9 : 0] \XLXI_2/cb_Nms ;
  wire [3 : 0] \XLXI_3/Q ;
  wire [3 : 0] \XLXI_4/Q ;
  wire [3 : 0] \XLXI_5/Q ;
  wire [3 : 0] \XLXI_6/Q ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_4/Q_3  (
    .C(XLXN_68),
    .CE(XLXN_4),
    .D(\XLXI_4/Q [2]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_4/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_4/Q_2  (
    .C(XLXN_68),
    .CE(XLXN_4),
    .D(\XLXI_4/Q [1]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_4/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_4/Q_1  (
    .C(XLXN_68),
    .CE(XLXN_4),
    .D(\XLXI_4/Q [0]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_4/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_4/Q_0  (
    .C(XLXN_68),
    .CE(XLXN_4),
    .D(\XLXI_4/Q_or0000 ),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_4/Q [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_100/Q2  (
    .C(XLXN_68),
    .CE(\XLXI_100/Q2_and0000 ),
    .D(BTN1_IBUF_27),
    .Q(\XLXI_100/Q2_174 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_100/Q1  (
    .C(XLXN_68),
    .CE(XLXN_86),
    .D(BTN1_IBUF_27),
    .Q(\XLXI_100/Q1_173 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_6/Q_0  (
    .C(XLXN_68),
    .CE(XLXN_6),
    .D(Result[0]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_6/Q [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_6/Q_1  (
    .C(XLXN_68),
    .CE(XLXN_6),
    .D(Result[1]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_6/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_6/Q_2  (
    .C(XLXN_68),
    .CE(XLXN_6),
    .D(Result[2]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_6/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_6/Q_3  (
    .C(XLXN_68),
    .CE(XLXN_6),
    .D(Result[3]),
    .R(BTN0_IBUF_25),
    .Q(\XLXI_6/Q [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_0  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_0 ),
    .Q(\XLXI_2/cb_Nms [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_1  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_1 ),
    .Q(\XLXI_2/cb_Nms [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_2  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_2 ),
    .Q(\XLXI_2/cb_Nms [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_3  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_3 ),
    .Q(\XLXI_2/cb_Nms [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_4  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_4 ),
    .Q(\XLXI_2/cb_Nms [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_5  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_5 ),
    .Q(\XLXI_2/cb_Nms [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_6  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_6 ),
    .Q(\XLXI_2/cb_Nms [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_7  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_7 ),
    .Q(\XLXI_2/cb_Nms [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_8  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_8 ),
    .Q(\XLXI_2/cb_Nms [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_2/cb_Nms_9  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\XLXI_2/Mcount_cb_Nms_eqn_9 ),
    .Q(\XLXI_2/cb_Nms [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_5/Q_0  (
    .C(XLXN_68),
    .CE(XLXN_5),
    .D(\Result<0>2 ),
    .R(\XLXI_5/Q_or0000 ),
    .Q(\XLXI_5/Q [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_5/Q_1  (
    .C(XLXN_68),
    .CE(XLXN_5),
    .D(\Result<1>2 ),
    .R(\XLXI_5/Q_or0000 ),
    .Q(\XLXI_5/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_5/Q_2  (
    .C(XLXN_68),
    .CE(XLXN_5),
    .D(\Result<2>2 ),
    .R(\XLXI_5/Q_or0000 ),
    .Q(\XLXI_5/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \XLXI_5/Q_3  (
    .C(XLXN_68),
    .CE(XLXN_5),
    .D(\Result<3>2 ),
    .R(\XLXI_5/Q_or0000 ),
    .Q(\XLXI_5/Q [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_0  (
    .C(XLXN_68),
    .D(\Result<0>3 ),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_1  (
    .C(XLXN_68),
    .D(\Result<1>3 ),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_2  (
    .C(XLXN_68),
    .D(\Result<2>3 ),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_3  (
    .C(XLXN_68),
    .D(\Result<3>3 ),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [3])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_4  (
    .C(XLXN_68),
    .D(\Result<4>1 ),
    .S(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_5  (
    .C(XLXN_68),
    .D(\Result<5>1 ),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [5])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_6  (
    .C(XLXN_68),
    .D(\Result<6>1 ),
    .S(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_7  (
    .C(XLXN_68),
    .D(\Result<7>1 ),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [7])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_8  (
    .C(XLXN_68),
    .D(\Result<8>1 ),
    .S(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [8])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_9  (
    .C(XLXN_68),
    .D(\Result<9>1 ),
    .S(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_10  (
    .C(XLXN_68),
    .D(Result[10]),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_11  (
    .C(XLXN_68),
    .D(Result[11]),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_12  (
    .C(XLXN_68),
    .D(Result[12]),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_13  (
    .C(XLXN_68),
    .D(Result[13]),
    .R(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [13])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_14  (
    .C(XLXN_68),
    .D(Result[14]),
    .S(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [14])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD5/cb_ms_15  (
    .C(XLXN_68),
    .D(Result[15]),
    .S(\XLXI_1/DD5/ce1ms75_166 ),
    .Q(\XLXI_1/DD5/cb_ms [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD1/q_0  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\Result<0>4 ),
    .Q(\XLXI_1/DD1/q [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \XLXI_1/DD1/q_1  (
    .C(XLXN_68),
    .CE(\XLXI_1/DD5/ce1ms75_166 ),
    .D(\Result<1>4 ),
    .Q(\XLXI_1/DD1/q [1])
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\XLXI_2/Mcount_cb_Nms_cy<0>_rt_180 ),
    .O(\XLXI_2/Mcount_cb_Nms_cy [0])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<0>  (
    .CI(N1),
    .LI(\XLXI_2/Mcount_cb_Nms_cy<0>_rt_180 ),
    .O(\Result<0>1 )
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<1>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [0]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [1]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [1])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<1>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [0]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [1]),
    .O(\Result<1>1 )
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<2>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [1]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [2]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [2])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<2>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [1]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [2]),
    .O(\Result<2>1 )
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<3>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [2]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [3]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [3])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<3>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [2]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [3]),
    .O(\Result<3>1 )
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<4>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [3]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [4]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [4])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<4>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [3]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [4]),
    .O(Result[4])
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<5>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [4]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [5]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [5])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<5>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [4]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [5]),
    .O(Result[5])
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<6>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [5]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [6]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [6])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<6>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [5]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [6]),
    .O(Result[6])
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<7>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [6]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [7]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [7])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<7>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [6]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [7]),
    .O(Result[7])
  );
  MUXCY   \XLXI_2/Mcount_cb_Nms_cy<8>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [7]),
    .DI(N1),
    .S(\XLXI_2/Mcount_cb_Nms_lut [8]),
    .O(\XLXI_2/Mcount_cb_Nms_cy [8])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<8>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [7]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [8]),
    .O(Result[8])
  );
  XORCY   \XLXI_2/Mcount_cb_Nms_xor<9>  (
    .CI(\XLXI_2/Mcount_cb_Nms_cy [8]),
    .LI(\XLXI_2/Mcount_cb_Nms_lut [9]),
    .O(Result[9])
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\XLXI_1/DD5/Mcount_cb_ms_cy<0>_rt_116 ),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [0])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<0>  (
    .CI(N1),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_cy<0>_rt_116 ),
    .O(\Result<0>3 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<1>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [0]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [1]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [1])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<1>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [0]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [1]),
    .O(\Result<1>3 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<2>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [1]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [2]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [2])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<2>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [1]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [2]),
    .O(\Result<2>3 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<3>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [2]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [3]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [3])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<3>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [2]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [3]),
    .O(\Result<3>3 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<4>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [3]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [4]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [4])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<4>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [3]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [4]),
    .O(\Result<4>1 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<5>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [4]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [5]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [5])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<5>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [4]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [5]),
    .O(\Result<5>1 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<6>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [5]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [6]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [6])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<6>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [5]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [6]),
    .O(\Result<6>1 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<7>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [6]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [7]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [7])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<7>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [6]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [7]),
    .O(\Result<7>1 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<8>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [7]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [8]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [8])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<8>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [7]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [8]),
    .O(\Result<8>1 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<9>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [8]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [9]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [9])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<9>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [8]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [9]),
    .O(\Result<9>1 )
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<10>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [9]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [10]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [10])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<10>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [9]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [10]),
    .O(Result[10])
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<11>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [10]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [11]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [11])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<11>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [10]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [11]),
    .O(Result[11])
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<12>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [11]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [12]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [12])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<12>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [11]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [12]),
    .O(Result[12])
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<13>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [12]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [13]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [13])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<13>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [12]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [13]),
    .O(Result[13])
  );
  MUXCY   \XLXI_1/DD5/Mcount_cb_ms_cy<14>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [13]),
    .DI(N1),
    .S(\XLXI_1/DD5/Mcount_cb_ms_lut [14]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy [14])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<14>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [13]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [14]),
    .O(Result[14])
  );
  XORCY   \XLXI_1/DD5/Mcount_cb_ms_xor<15>  (
    .CI(\XLXI_1/DD5/Mcount_cb_ms_cy [14]),
    .LI(\XLXI_1/DD5/Mcount_cb_ms_lut [15]),
    .O(Result[15])
  );
  MUXF5   \XLXI_1/DD2/Mmux_do_2_f5_2  (
    .I0(\XLXI_1/DD2/Mmux_do_43_114 ),
    .I1(\XLXI_1/DD2/Mmux_do_33_110 ),
    .S(\XLXI_1/DD1/q [1]),
    .O(\XLXI_1/Dig [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_43  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_3/Q [3]),
    .I2(\XLXI_4/Q [3]),
    .O(\XLXI_1/DD2/Mmux_do_43_114 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_33  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_5/Q [3]),
    .I2(\XLXI_6/Q [3]),
    .O(\XLXI_1/DD2/Mmux_do_33_110 )
  );
  MUXF5   \XLXI_1/DD2/Mmux_do_2_f5_1  (
    .I0(\XLXI_1/DD2/Mmux_do_42_113 ),
    .I1(\XLXI_1/DD2/Mmux_do_32_109 ),
    .S(\XLXI_1/DD1/q [1]),
    .O(\XLXI_1/Dig [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_42  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_3/Q [2]),
    .I2(\XLXI_4/Q [2]),
    .O(\XLXI_1/DD2/Mmux_do_42_113 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_32  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_5/Q [2]),
    .I2(\XLXI_6/Q [2]),
    .O(\XLXI_1/DD2/Mmux_do_32_109 )
  );
  MUXF5   \XLXI_1/DD2/Mmux_do_2_f5_0  (
    .I0(\XLXI_1/DD2/Mmux_do_41_112 ),
    .I1(\XLXI_1/DD2/Mmux_do_31_108 ),
    .S(\XLXI_1/DD1/q [1]),
    .O(\XLXI_1/Dig [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_41  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_3/Q [1]),
    .I2(\XLXI_4/Q [1]),
    .O(\XLXI_1/DD2/Mmux_do_41_112 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_31  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_5/Q [1]),
    .I2(\XLXI_6/Q [1]),
    .O(\XLXI_1/DD2/Mmux_do_31_108 )
  );
  MUXF5   \XLXI_1/DD2/Mmux_do_2_f5  (
    .I0(\XLXI_1/DD2/Mmux_do_4_111 ),
    .I1(\XLXI_1/DD2/Mmux_do_3_107 ),
    .S(\XLXI_1/DD1/q [1]),
    .O(\XLXI_1/Dig [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_4  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_3/Q [0]),
    .I2(\XLXI_4/Q [0]),
    .O(\XLXI_1/DD2/Mmux_do_4_111 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/DD2/Mmux_do_3  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_5/Q [0]),
    .I2(\XLXI_6/Q [0]),
    .O(\XLXI_1/DD2/Mmux_do_3_107 )
  );
  BUFG   XLXI_8 (
    .I(F50MHz_IBUFG_31),
    .O(XLXN_68)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_3/Q_3  (
    .C(XLXN_68),
    .CE(\XLXI_3/Q_not0001 ),
    .CLR(BTN0_IBUF_25),
    .D(\XLXI_3/Mcount_Q4 ),
    .Q(\XLXI_3/Q [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_3/Q_2  (
    .C(XLXN_68),
    .CE(\XLXI_3/Q_not0001 ),
    .CLR(BTN0_IBUF_25),
    .D(\XLXI_3/Mcount_Q3 ),
    .Q(\XLXI_3/Q [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_3/Q_1  (
    .C(XLXN_68),
    .CE(\XLXI_3/Q_not0001 ),
    .CLR(BTN0_IBUF_25),
    .D(\XLXI_3/Mcount_Q2 ),
    .Q(\XLXI_3/Q [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_3/Q_0  (
    .C(XLXN_68),
    .CE(\XLXI_3/Q_not0001 ),
    .CLR(BTN0_IBUF_25),
    .D(\XLXI_3/Mcount_Q1 ),
    .Q(\XLXI_3/Q [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \XLXI_1/DD1/Mdecod_an31  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_1/DD1/q [1]),
    .O(AN_3_OBUF_23)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \XLXI_1/DD1/Mdecod_an21  (
    .I0(\XLXI_1/DD1/q [1]),
    .I1(\XLXI_1/DD1/q [0]),
    .O(AN_2_OBUF_22)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \XLXI_1/DD1/Mdecod_an11  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_1/DD1/q [1]),
    .O(AN_1_OBUF_21)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \XLXI_1/DD1/Mdecod_an01  (
    .I0(\XLXI_1/DD1/q [0]),
    .I1(\XLXI_1/DD1/q [1]),
    .O(AN_0_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \XLXI_1/DD4/seg_P1  (
    .I0(SW_4_IBUF_101),
    .I1(\XLXI_1/DD1/q [0]),
    .I2(SW_5_IBUF_102),
    .I3(\XLXI_1/DD1/q [1]),
    .O(seg_7_OBUF_265)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_6/Mcount_Q_xor<1>11  (
    .I0(\XLXI_6/Q [1]),
    .I1(\XLXI_6/Q [0]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_5/Mcount_Q_xor<1>11  (
    .I0(\XLXI_5/Q [1]),
    .I1(\XLXI_5/Q [0]),
    .O(\Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_1/DD1/Mcount_q_xor<1>11  (
    .I0(\XLXI_1/DD1/q [1]),
    .I1(\XLXI_1/DD1/q [0]),
    .O(\Result<1>4 )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \XLXI_3/Mcount_Q_xor<0>11  (
    .I0(BTN3_IBUF_29),
    .I1(\XLXI_3/Q [0]),
    .I2(SW_0_IBUF_97),
    .O(\XLXI_3/Mcount_Q1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \XLXI_6/Mcount_Q_xor<2>11  (
    .I0(\XLXI_6/Q [2]),
    .I1(\XLXI_6/Q [1]),
    .I2(\XLXI_6/Q [0]),
    .O(Result[2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \XLXI_5/Mcount_Q_xor<2>11  (
    .I0(\XLXI_5/Q [2]),
    .I1(\XLXI_5/Q [1]),
    .I2(\XLXI_5/Q [0]),
    .O(\Result<2>2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \XLXI_6/Mcount_Q_xor<3>11  (
    .I0(\XLXI_6/Q [3]),
    .I1(\XLXI_6/Q [1]),
    .I2(\XLXI_6/Q [0]),
    .I3(\XLXI_6/Q [2]),
    .O(Result[3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \XLXI_5/Mcount_Q_xor<3>11  (
    .I0(\XLXI_5/Q [3]),
    .I1(\XLXI_5/Q [1]),
    .I2(\XLXI_5/Q [0]),
    .I3(\XLXI_5/Q [2]),
    .O(\Result<3>2 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \XLXI_3/Q_not00011  (
    .I0(BTN3_IBUF_29),
    .I1(\XLXI_100/BTN_OUT_171 ),
    .O(\XLXI_3/Q_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \XLXI_1/DD3/Mrom_seg41  (
    .I0(\XLXI_1/Dig [3]),
    .I1(\XLXI_1/Dig [0]),
    .I2(\XLXI_1/Dig [2]),
    .I3(\XLXI_1/Dig [1]),
    .O(seg_4_OBUF_262)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \XLXI_1/DD3/Mrom_seg21  (
    .I0(\XLXI_1/Dig [1]),
    .I1(\XLXI_1/Dig [2]),
    .I2(\XLXI_1/Dig [3]),
    .I3(\XLXI_1/Dig [0]),
    .O(seg_2_OBUF_260)
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \XLXI_1/DD3/Mrom_seg61  (
    .I0(\XLXI_1/Dig [1]),
    .I1(\XLXI_1/Dig [3]),
    .I2(\XLXI_1/Dig [2]),
    .I3(\XLXI_1/Dig [0]),
    .O(seg_6_OBUF_264)
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \XLXI_1/DD3/Mrom_seg51  (
    .I0(\XLXI_1/Dig [3]),
    .I1(\XLXI_1/Dig [1]),
    .I2(\XLXI_1/Dig [0]),
    .I3(\XLXI_1/Dig [2]),
    .O(seg_5_OBUF_263)
  );
  LUT4 #(
    .INIT ( 16'hB860 ))
  \XLXI_1/DD3/Mrom_seg111  (
    .I0(\XLXI_1/Dig [1]),
    .I1(\XLXI_1/Dig [0]),
    .I2(\XLXI_1/Dig [2]),
    .I3(\XLXI_1/Dig [3]),
    .O(seg_1_OBUF_259)
  );
  LUT4 #(
    .INIT ( 16'h9086 ))
  \XLXI_1/DD3/Mrom_seg31  (
    .I0(\XLXI_1/Dig [0]),
    .I1(\XLXI_1/Dig [2]),
    .I2(\XLXI_1/Dig [1]),
    .I3(\XLXI_1/Dig [3]),
    .O(seg_3_OBUF_261)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \XLXI_1/DD3/Mrom_seg11  (
    .I0(\XLXI_1/Dig [0]),
    .I1(\XLXI_1/Dig [1]),
    .I2(\XLXI_1/Dig [2]),
    .I3(\XLXI_1/Dig [3]),
    .O(seg_0_OBUF_258)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \XLXI_2/Mcount_cb_Nms_eqn_11  (
    .I0(\Result<1>1 ),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_1 )
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \XLXI_2/Mcount_cb_Nms_eqn_01  (
    .I0(SW_7_IBUF_104),
    .I1(\Result<0>1 ),
    .I2(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_0 )
  );
  LUT4 #(
    .INIT ( 16'hEB41 ))
  \XLXI_3/Mcount_Q_xor<2>12  (
    .I0(BTN3_IBUF_29),
    .I1(\XLXI_3/N11 ),
    .I2(\XLXI_3/Q [2]),
    .I3(SW_2_IBUF_99),
    .O(\XLXI_3/Mcount_Q3 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \XLXI_2/Mcount_cb_Nms_eqn_21  (
    .I0(\Result<2>1 ),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \XLXI_2/Mcount_cb_Nms_eqn_31  (
    .I0(\Result<3>1 ),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \XLXI_2/Mcount_cb_Nms_eqn_41  (
    .I0(Result[4]),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_4 )
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \XLXI_2/Mcount_cb_Nms_eqn_51  (
    .I0(SW_7_IBUF_104),
    .I1(Result[5]),
    .I2(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_5 )
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \XLXI_2/Mcount_cb_Nms_eqn_61  (
    .I0(SW_7_IBUF_104),
    .I1(Result[6]),
    .I2(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_6 )
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \XLXI_2/Mcount_cb_Nms_eqn_71  (
    .I0(SW_7_IBUF_104),
    .I1(Result[7]),
    .I2(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_7 )
  );
  LUT3 #(
    .INIT ( 8'h5C ))
  \XLXI_2/Mcount_cb_Nms_eqn_81  (
    .I0(SW_7_IBUF_104),
    .I1(Result[8]),
    .I2(\XLXI_2/CEO_cmp_eq0000 ),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_8 )
  );
  LUT3 #(
    .INIT ( 8'h74 ))
  \XLXI_2/Mcount_cb_Nms_eqn_91  (
    .I0(SW_7_IBUF_104),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .I2(Result[9]),
    .O(\XLXI_2/Mcount_cb_Nms_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \XLXI_2/CEO1  (
    .I0(\XLXI_2/CEO_cmp_eq0000 ),
    .I1(\XLXI_1/DD5/ce1ms75_166 ),
    .O(XLXN_86)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_2/CEO_cmp_eq000012  (
    .I0(\XLXI_2/cb_Nms [0]),
    .I1(\XLXI_2/cb_Nms [1]),
    .I2(\XLXI_2/cb_Nms [2]),
    .I3(\XLXI_2/cb_Nms [3]),
    .O(\XLXI_2/CEO_cmp_eq000012_177 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_1/DD5/ce1ms24  (
    .I0(\XLXI_1/DD5/cb_ms [4]),
    .I1(\XLXI_1/DD5/cb_ms [5]),
    .I2(\XLXI_1/DD5/cb_ms [6]),
    .I3(\XLXI_1/DD5/cb_ms [7]),
    .O(\XLXI_1/DD5/ce1ms24_163 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_1/DD5/ce1ms48  (
    .I0(\XLXI_1/DD5/cb_ms [8]),
    .I1(\XLXI_1/DD5/cb_ms [9]),
    .I2(\XLXI_1/DD5/cb_ms [10]),
    .I3(\XLXI_1/DD5/cb_ms [11]),
    .O(\XLXI_1/DD5/ce1ms48_164 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_1/DD5/ce1ms61  (
    .I0(\XLXI_1/DD5/cb_ms [12]),
    .I1(\XLXI_1/DD5/cb_ms [13]),
    .I2(\XLXI_1/DD5/cb_ms [14]),
    .I3(\XLXI_1/DD5/cb_ms [15]),
    .O(\XLXI_1/DD5/ce1ms61_165 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \XLXI_1/DD5/ce1ms75  (
    .I0(N21),
    .I1(\XLXI_1/DD5/ce1ms24_163 ),
    .I2(\XLXI_1/DD5/ce1ms48_164 ),
    .I3(\XLXI_1/DD5/ce1ms61_165 ),
    .O(XLXN_59)
  );
  LUT4 #(
    .INIT ( 16'hEB41 ))
  \XLXI_3/Mcount_Q_xor<3>1  (
    .I0(BTN3_IBUF_29),
    .I1(N2),
    .I2(\XLXI_3/Q [3]),
    .I3(SW_3_IBUF_100),
    .O(\XLXI_3/Mcount_Q4 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \XLXI_5/CEO_SW0  (
    .I0(\XLXI_5/Q [0]),
    .I1(\XLXI_5/Q [1]),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \XLXI_4/CEO  (
    .I0(\XLXI_4/Q [2]),
    .I1(\XLXI_4/Q [3]),
    .I2(N22),
    .I3(XLXN_4),
    .O(XLXN_5)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \XLXI_3/CEO_SW0  (
    .I0(SW_6_IBUF_103),
    .I1(\XLXI_3/Q [1]),
    .I2(\XLXI_100/BTN_OUT_171 ),
    .I3(\XLXI_3/Q [0]),
    .O(N8)
  );
  LUT4 #(
    .INIT ( 16'h8091 ))
  \XLXI_3/CEO  (
    .I0(\XLXI_3/Q [3]),
    .I1(\XLXI_3/Q [2]),
    .I2(N9),
    .I3(N8),
    .O(XLXN_4)
  );
  IBUFG   F50MHz_IBUFG (
    .I(F50MHz),
    .O(F50MHz_IBUFG_31)
  );
  IBUF   BTN0_IBUF (
    .I(BTN0),
    .O(BTN0_IBUF_25)
  );
  IBUF   BTN1_IBUF (
    .I(BTN1),
    .O(BTN1_IBUF_27)
  );
  IBUF   BTN3_IBUF (
    .I(BTN3),
    .O(BTN3_IBUF_29)
  );
  IBUF   SW_7_IBUF (
    .I(SW[7]),
    .O(SW_7_IBUF_104)
  );
  IBUF   SW_6_IBUF (
    .I(SW[6]),
    .O(SW_6_IBUF_103)
  );
  IBUF   SW_5_IBUF (
    .I(SW[5]),
    .O(SW_5_IBUF_102)
  );
  IBUF   SW_4_IBUF (
    .I(SW[4]),
    .O(SW_4_IBUF_101)
  );
  IBUF   SW_3_IBUF (
    .I(SW[3]),
    .O(SW_3_IBUF_100)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_99)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_98)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_97)
  );
  OBUF   AN_3_OBUF (
    .I(AN_3_OBUF_23),
    .O(AN[3])
  );
  OBUF   AN_2_OBUF (
    .I(AN_2_OBUF_22),
    .O(AN[2])
  );
  OBUF   AN_1_OBUF (
    .I(AN_1_OBUF_21),
    .O(AN[1])
  );
  OBUF   AN_0_OBUF (
    .I(AN_0_OBUF_20),
    .O(AN[0])
  );
  OBUF   seg_7_OBUF (
    .I(seg_7_OBUF_265),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_264),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_263),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_262),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_261),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_260),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_259),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_258),
    .O(seg[0])
  );
  FDR   \XLXI_100/BTN_OUT  (
    .C(XLXN_68),
    .D(\XLXI_100/BTN_OUT_and00001 ),
    .R(\XLXI_100/Q2_174 ),
    .Q(\XLXI_100/BTN_OUT_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_cb_Nms_cy<0>_rt  (
    .I0(\XLXI_2/cb_Nms [0]),
    .O(\XLXI_2/Mcount_cb_Nms_cy<0>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_1/DD5/Mcount_cb_ms_cy<0>_rt  (
    .I0(\XLXI_1/DD5/cb_ms [0]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_cy<0>_rt_116 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \XLXI_2/CEO_cmp_eq000039  (
    .I0(\XLXI_2/cb_Nms [5]),
    .I1(\XLXI_2/cb_Nms [4]),
    .I2(\XLXI_2/CEO_cmp_eq000037_178 ),
    .I3(\XLXI_2/CEO_cmp_eq000012_177 ),
    .O(\XLXI_2/CEO_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \XLXI_100/Q2_and00001  (
    .I0(\XLXI_100/Q1_173 ),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .I2(\XLXI_1/DD5/ce1ms75_166 ),
    .O(\XLXI_100/Q2_and0000 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \XLXI_5/Q_or00001  (
    .I0(BTN0_IBUF_25),
    .I1(N6),
    .I2(N13),
    .I3(XLXN_4),
    .O(\XLXI_5/Q_or0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \XLXI_100/BTN_OUT_and000011  (
    .I0(\XLXI_100/Q1_173 ),
    .I1(\XLXI_2/CEO_cmp_eq0000 ),
    .I2(XLXN_59),
    .O(\XLXI_100/BTN_OUT_and00001 )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \XLXI_5/CEO  (
    .I0(N15),
    .I1(N6),
    .I2(N4),
    .I3(XLXN_4),
    .O(XLXN_6)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \XLXI_4/CEO_SW1_SW0  (
    .I0(\XLXI_4/Q [2]),
    .I1(\XLXI_4/Q [3]),
    .I2(\XLXI_5/Q [0]),
    .O(N17)
  );
  LUT4 #(
    .INIT ( 16'h7FEC ))
  \XLXI_3/Mcount_Q_xor<2>111  (
    .I0(\XLXI_100/BTN_OUT_171 ),
    .I1(\XLXI_3/Q [0]),
    .I2(SW_6_IBUF_103),
    .I3(\XLXI_3/Q [1]),
    .O(\XLXI_3/N11 )
  );
  LUT3 #(
    .INIT ( 8'h95 ))
  \XLXI_3/Mcount_Q_xor<1>1_SW1  (
    .I0(\XLXI_3/Q [1]),
    .I1(SW_6_IBUF_103),
    .I2(\XLXI_100/BTN_OUT_171 ),
    .O(N19)
  );
  LUT4 #(
    .INIT ( 16'hDE12 ))
  \XLXI_3/Mcount_Q_xor<1>1  (
    .I0(\XLXI_3/Q [0]),
    .I1(BTN3_IBUF_29),
    .I2(N19),
    .I3(SW_1_IBUF_98),
    .O(\XLXI_3/Mcount_Q2 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \XLXI_1/DD5/ce1ms75_1  (
    .I0(\XLXI_1/DD5/ce1ms11_162 ),
    .I1(\XLXI_1/DD5/ce1ms24_163 ),
    .I2(\XLXI_1/DD5/ce1ms48_164 ),
    .I3(\XLXI_1/DD5/ce1ms61_165 ),
    .O(\XLXI_1/DD5/ce1ms75_166 )
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<1>_INV_0  (
    .I(\XLXI_2/cb_Nms [1]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [1])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<2>_INV_0  (
    .I(\XLXI_2/cb_Nms [2]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [2])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<3>_INV_0  (
    .I(\XLXI_2/cb_Nms [3]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [3])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<4>_INV_0  (
    .I(\XLXI_2/cb_Nms [4]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [4])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<5>_INV_0  (
    .I(\XLXI_2/cb_Nms [5]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [5])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<6>_INV_0  (
    .I(\XLXI_2/cb_Nms [6]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [6])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<7>_INV_0  (
    .I(\XLXI_2/cb_Nms [7]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [7])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<8>_INV_0  (
    .I(\XLXI_2/cb_Nms [8]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [8])
  );
  INV   \XLXI_2/Mcount_cb_Nms_lut<9>_INV_0  (
    .I(\XLXI_2/cb_Nms [9]),
    .O(\XLXI_2/Mcount_cb_Nms_lut [9])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<1>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [1]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [1])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<2>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [2]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [2])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<3>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [3]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [3])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<4>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [4]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [4])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<5>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [5]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [5])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<6>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [6]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [6])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<7>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [7]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [7])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<8>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [8]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [8])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<9>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [9]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [9])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<10>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [10]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [10])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<11>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [11]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [11])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<12>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [12]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [12])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<13>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [13]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [13])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<14>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [14]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [14])
  );
  INV   \XLXI_1/DD5/Mcount_cb_ms_lut<15>_INV_0  (
    .I(\XLXI_1/DD5/cb_ms [15]),
    .O(\XLXI_1/DD5/Mcount_cb_ms_lut [15])
  );
  INV   \XLXI_6/Mcount_Q_xor<0>11_INV_0  (
    .I(\XLXI_6/Q [0]),
    .O(Result[0])
  );
  INV   \XLXI_5/Mcount_Q_xor<0>11_INV_0  (
    .I(\XLXI_5/Q [0]),
    .O(\Result<0>2 )
  );
  INV   \XLXI_4/Q_or00001_INV_0  (
    .I(\XLXI_4/Q [3]),
    .O(\XLXI_4/Q_or0000 )
  );
  INV   \XLXI_1/DD1/Mcount_q_xor<0>11_INV_0  (
    .I(\XLXI_1/DD1/q [0]),
    .O(\Result<0>4 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \XLXI_3/Mcount_Q_xor<3>1_SW01  (
    .I0(\XLXI_100/BTN_OUT_171 ),
    .I1(SW_6_IBUF_103),
    .I2(\XLXI_3/Q [0]),
    .I3(\XLXI_3/Q [1]),
    .O(\XLXI_3/Mcount_Q_xor<3>1_SW0 )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \XLXI_3/Mcount_Q_xor<3>1_SW02  (
    .I0(\XLXI_3/Q [0]),
    .I1(\XLXI_3/Q [1]),
    .I2(\XLXI_100/BTN_OUT_171 ),
    .I3(SW_6_IBUF_103),
    .O(\XLXI_3/Mcount_Q_xor<3>1_SW01_223 )
  );
  MUXF5   \XLXI_3/Mcount_Q_xor<3>1_SW0_f5  (
    .I0(\XLXI_3/Mcount_Q_xor<3>1_SW01_223 ),
    .I1(\XLXI_3/Mcount_Q_xor<3>1_SW0 ),
    .S(\XLXI_3/Q [2]),
    .O(N2)
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \XLXI_2/CEO_cmp_eq000037  (
    .I0(\XLXI_2/cb_Nms [6]),
    .I1(\XLXI_2/cb_Nms [7]),
    .I2(\XLXI_2/cb_Nms [8]),
    .I3(\XLXI_2/cb_Nms [9]),
    .LO(\XLXI_2/CEO_cmp_eq000037_178 )
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \XLXI_1/DD5/ce1ms11  (
    .I0(\XLXI_1/DD5/cb_ms [0]),
    .I1(\XLXI_1/DD5/cb_ms [1]),
    .I2(\XLXI_1/DD5/cb_ms [2]),
    .I3(\XLXI_1/DD5/cb_ms [3]),
    .LO(N21),
    .O(\XLXI_1/DD5/ce1ms11_162 )
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \XLXI_4/CEO_SW0  (
    .I0(\XLXI_4/Q [1]),
    .I1(\XLXI_4/Q [0]),
    .LO(N22),
    .O(N6)
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \XLXI_3/CEO_SW1  (
    .I0(SW_6_IBUF_103),
    .I1(\XLXI_100/BTN_OUT_171 ),
    .I2(\XLXI_3/Q [1]),
    .I3(\XLXI_3/Q [0]),
    .LO(N9)
  );
  LUT4_L #(
    .INIT ( 16'hBFFF ))
  \XLXI_4/CEO_SW2  (
    .I0(\XLXI_5/Q [2]),
    .I1(\XLXI_5/Q [3]),
    .I2(\XLXI_4/Q [3]),
    .I3(\XLXI_4/Q [2]),
    .LO(N15)
  );
  LUT4_L #(
    .INIT ( 16'h0002 ))
  \XLXI_4/CEO_SW1  (
    .I0(\XLXI_5/Q [3]),
    .I1(\XLXI_5/Q [2]),
    .I2(\XLXI_5/Q [1]),
    .I3(N17),
    .LO(N13)
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_37  (
    .I(SW_4_IBUF_101),
    .O(LED[4])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_36  (
    .I(SW_5_IBUF_102),
    .O(LED[5])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_35  (
    .I(SW_6_IBUF_103),
    .O(LED[6])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_34  (
    .I(SW_7_IBUF_104),
    .O(LED[7])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_33  (
    .I(SW_3_IBUF_100),
    .O(LED[3])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_32  (
    .I(SW_2_IBUF_99),
    .O(LED[2])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_31  (
    .I(SW_1_IBUF_98),
    .O(LED[1])
  );
  OBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DRIVE ( 12 ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \XLXI_7/I_36_30  (
    .I(SW_0_IBUF_97),
    .O(LED[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

