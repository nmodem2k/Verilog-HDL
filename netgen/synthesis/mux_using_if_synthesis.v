////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: mux_using_if_synthesis.v
// /___/   /\     Timestamp: Thu Jan 30 12:41:42 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim mux_using_if.ngc mux_using_if_synthesis.v 
// Device	: xc3s100e-5-vq100
// Input file	: mux_using_if.ngc
// Output file	: C:\Users\ECE17U011\Documents\FAHAD ISE\ECE17U011\netgen\synthesis\mux_using_if_synthesis.v
// # of Modules	: 1
// Design Name	: mux_using_if
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

module mux_using_if (
  sel_0, sel_1, sel_2, sel_3, f_mux_out, din_0, din_1, din_2, din_3, din_4, din_5, din_6, din_7, din_8, din_9, mux_out_0, mux_out_1, mux_out_2, 
mux_out_3, din_10, din_11, din_12, din_13, din_14, din_15
);
  input sel_0;
  input sel_1;
  input sel_2;
  input sel_3;
  output f_mux_out;
  input din_0;
  input din_1;
  input din_2;
  input din_3;
  input din_4;
  input din_5;
  input din_6;
  input din_7;
  input din_8;
  input din_9;
  output mux_out_0;
  output mux_out_1;
  output mux_out_2;
  output mux_out_3;
  input din_10;
  input din_11;
  input din_12;
  input din_13;
  input din_14;
  input din_15;
  wire N26;
  wire N27;
  wire N28;
  wire N29;
  wire N30;
  wire N31;
  wire N32;
  wire N33;
  wire N34;
  wire N35;
  wire din_0_IBUF_11;
  wire din_10_IBUF_14;
  wire din_11_IBUF_16;
  wire din_12_IBUF_18;
  wire din_13_IBUF_20;
  wire din_14_IBUF_22;
  wire din_15_IBUF_24;
  wire din_1_IBUF_25;
  wire din_2_IBUF_27;
  wire din_3_IBUF_29;
  wire din_4_IBUF_31;
  wire din_5_IBUF_33;
  wire din_6_IBUF_35;
  wire din_7_IBUF_37;
  wire din_8_IBUF_39;
  wire din_9_IBUF_41;
  wire f_mux_out_OBUF_43;
  wire f_mux_out__and0000;
  wire f_mux_out__and0001;
  wire f_mux_out_mux0000;
  wire mux_out_0_1_48;
  wire mux_out_0_OBUF_49;
  wire mux_out_0__and0000;
  wire mux_out_0__and0001;
  wire mux_out_0_mux0000_52;
  wire mux_out_1_1_54;
  wire mux_out_1_OBUF_55;
  wire mux_out_1__and0000;
  wire mux_out_1__and0001;
  wire mux_out_1_mux0000_58;
  wire mux_out_2_1_60;
  wire mux_out_2_OBUF_61;
  wire mux_out_2__and0000;
  wire mux_out_2__and0001;
  wire mux_out_2_mux0000_64;
  wire mux_out_3_1_66;
  wire mux_out_3_OBUF_67;
  wire mux_out_3__and0000;
  wire mux_out_3__and0001;
  wire mux_out_3_mux0000_70;
  wire sel_0_IBUF_72;
  wire sel_1_IBUF_74;
  wire sel_1_IBUF1;
  wire sel_2_IBUF_77;
  wire sel_3_IBUF_79;
  wire sel_3_IBUF1;
  LDCPE   f_mux_out_1 (
    .CLR(f_mux_out__and0000),
    .D(f_mux_out_mux0000),
    .G(sel_3_IBUF_79),
    .GE(sel_2_IBUF_77),
    .PRE(f_mux_out__and0001),
    .Q(f_mux_out_OBUF_43)
  );
  LDCPE   mux_out_3_2 (
    .CLR(mux_out_3__and0000),
    .D(mux_out_3_mux0000_70),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_3__and0001),
    .Q(mux_out_3_OBUF_67)
  );
  LDCPE   mux_out_2_3 (
    .CLR(mux_out_2__and0000),
    .D(mux_out_2_mux0000_64),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_2__and0001),
    .Q(mux_out_2_OBUF_61)
  );
  LDCPE   mux_out_1_4 (
    .CLR(mux_out_1__and0000),
    .D(mux_out_1_mux0000_58),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_1__and0001),
    .Q(mux_out_1_OBUF_55)
  );
  LDCPE   mux_out_0_5 (
    .CLR(mux_out_0__and0000),
    .D(mux_out_0_mux0000_52),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_0__and0001),
    .Q(mux_out_0_OBUF_49)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  mux_out_3__and00011 (
    .I0(mux_out_3_mux0000_70),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_3__and0001)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  mux_out_3__and00001 (
    .I0(mux_out_3_mux0000_70),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_3__and0000)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  mux_out_2__and00011 (
    .I0(mux_out_2_mux0000_64),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_2__and0001)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  mux_out_2__and00001 (
    .I0(mux_out_2_mux0000_64),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_2__and0000)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  mux_out_1__and00011 (
    .I0(mux_out_1_mux0000_58),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_1__and0001)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  mux_out_1__and00001 (
    .I0(mux_out_1_mux0000_58),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_1__and0000)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  mux_out_0__and00011 (
    .I0(mux_out_0_mux0000_52),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_0__and0001)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  mux_out_0__and00001 (
    .I0(mux_out_0_mux0000_52),
    .I1(sel_0_IBUF_72),
    .I2(sel_1_IBUF1),
    .O(mux_out_0__and0000)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  f_mux_out__and00011 (
    .I0(f_mux_out_mux0000),
    .I1(sel_2_IBUF_77),
    .I2(sel_3_IBUF1),
    .O(f_mux_out__and0001)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  f_mux_out__and00001 (
    .I0(f_mux_out_mux0000),
    .I1(sel_2_IBUF_77),
    .I2(sel_3_IBUF1),
    .O(f_mux_out__and0000)
  );
  IBUF   sel_1_IBUF (
    .I(sel_1),
    .O(sel_1_IBUF1)
  );
  IBUF   sel_3_IBUF (
    .I(sel_3),
    .O(sel_3_IBUF1)
  );
  IBUF   sel_0_IBUF (
    .I(sel_0),
    .O(sel_0_IBUF_72)
  );
  IBUF   sel_2_IBUF (
    .I(sel_2),
    .O(sel_2_IBUF_77)
  );
  IBUF   din_0_IBUF (
    .I(din_0),
    .O(din_0_IBUF_11)
  );
  IBUF   din_1_IBUF (
    .I(din_1),
    .O(din_1_IBUF_25)
  );
  IBUF   din_2_IBUF (
    .I(din_2),
    .O(din_2_IBUF_27)
  );
  IBUF   din_3_IBUF (
    .I(din_3),
    .O(din_3_IBUF_29)
  );
  IBUF   din_4_IBUF (
    .I(din_4),
    .O(din_4_IBUF_31)
  );
  IBUF   din_5_IBUF (
    .I(din_5),
    .O(din_5_IBUF_33)
  );
  IBUF   din_6_IBUF (
    .I(din_6),
    .O(din_6_IBUF_35)
  );
  IBUF   din_7_IBUF (
    .I(din_7),
    .O(din_7_IBUF_37)
  );
  IBUF   din_8_IBUF (
    .I(din_8),
    .O(din_8_IBUF_39)
  );
  IBUF   din_9_IBUF (
    .I(din_9),
    .O(din_9_IBUF_41)
  );
  IBUF   din_10_IBUF (
    .I(din_10),
    .O(din_10_IBUF_14)
  );
  IBUF   din_11_IBUF (
    .I(din_11),
    .O(din_11_IBUF_16)
  );
  IBUF   din_12_IBUF (
    .I(din_12),
    .O(din_12_IBUF_18)
  );
  IBUF   din_13_IBUF (
    .I(din_13),
    .O(din_13_IBUF_20)
  );
  IBUF   din_14_IBUF (
    .I(din_14),
    .O(din_14_IBUF_22)
  );
  IBUF   din_15_IBUF (
    .I(din_15),
    .O(din_15_IBUF_24)
  );
  OBUF   f_mux_out_OBUF (
    .I(f_mux_out_OBUF_43),
    .O(f_mux_out)
  );
  OBUF   mux_out_0_OBUF (
    .I(mux_out_0_1_48),
    .O(mux_out_0)
  );
  OBUF   mux_out_1_OBUF (
    .I(mux_out_1_1_54),
    .O(mux_out_1)
  );
  OBUF   mux_out_2_OBUF (
    .I(mux_out_2_1_60),
    .O(mux_out_2)
  );
  OBUF   mux_out_3_OBUF (
    .I(mux_out_3_1_66),
    .O(mux_out_3)
  );
  MUXF5   mux_out_3_mux0000 (
    .I0(N26),
    .I1(N27),
    .S(sel_1_IBUF1),
    .O(mux_out_3_mux0000_70)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_3_mux0000_F (
    .I0(sel_0_IBUF_72),
    .I1(din_12_IBUF_18),
    .I2(din_14_IBUF_22),
    .O(N26)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_3_mux0000_G (
    .I0(sel_0_IBUF_72),
    .I1(din_13_IBUF_20),
    .I2(din_15_IBUF_24),
    .O(N27)
  );
  MUXF5   mux_out_2_mux0000 (
    .I0(N28),
    .I1(N29),
    .S(sel_1_IBUF1),
    .O(mux_out_2_mux0000_64)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_2_mux0000_F (
    .I0(sel_0_IBUF_72),
    .I1(din_8_IBUF_39),
    .I2(din_10_IBUF_14),
    .O(N28)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_2_mux0000_G (
    .I0(sel_0_IBUF_72),
    .I1(din_9_IBUF_41),
    .I2(din_11_IBUF_16),
    .O(N29)
  );
  MUXF5   mux_out_1_mux0000 (
    .I0(N30),
    .I1(N31),
    .S(sel_1_IBUF1),
    .O(mux_out_1_mux0000_58)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_1_mux0000_F (
    .I0(sel_0_IBUF_72),
    .I1(din_4_IBUF_31),
    .I2(din_6_IBUF_35),
    .O(N30)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_1_mux0000_G (
    .I0(sel_0_IBUF_72),
    .I1(din_5_IBUF_33),
    .I2(din_7_IBUF_37),
    .O(N31)
  );
  MUXF5   mux_out_0_mux0000 (
    .I0(N32),
    .I1(N33),
    .S(sel_1_IBUF1),
    .O(mux_out_0_mux0000_52)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_0_mux0000_F (
    .I0(sel_0_IBUF_72),
    .I1(din_0_IBUF_11),
    .I2(din_2_IBUF_27),
    .O(N32)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  mux_out_0_mux0000_G (
    .I0(sel_0_IBUF_72),
    .I1(din_1_IBUF_25),
    .I2(din_3_IBUF_29),
    .O(N33)
  );
  MUXF5   f_mux_out_mux000032 (
    .I0(N34),
    .I1(N35),
    .S(sel_2_IBUF_77),
    .O(f_mux_out_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  f_mux_out_mux000032_F (
    .I0(sel_3_IBUF1),
    .I1(mux_out_0_OBUF_49),
    .I2(mux_out_1_OBUF_55),
    .O(N34)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  f_mux_out_mux000032_G (
    .I0(sel_3_IBUF1),
    .I1(mux_out_2_OBUF_61),
    .I2(mux_out_3_OBUF_67),
    .O(N35)
  );
  BUFG   sel_1_IBUF_BUFG (
    .I(sel_1_IBUF1),
    .O(sel_1_IBUF_74)
  );
  BUFG   sel_3_IBUF_BUFG (
    .I(sel_3_IBUF1),
    .O(sel_3_IBUF_79)
  );
  LDCPE   mux_out_0_1 (
    .CLR(mux_out_0__and0000),
    .D(mux_out_0_mux0000_52),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_0__and0001),
    .Q(mux_out_0_1_48)
  );
  LDCPE   mux_out_1_1 (
    .CLR(mux_out_1__and0000),
    .D(mux_out_1_mux0000_58),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_1__and0001),
    .Q(mux_out_1_1_54)
  );
  LDCPE   mux_out_2_1 (
    .CLR(mux_out_2__and0000),
    .D(mux_out_2_mux0000_64),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_2__and0001),
    .Q(mux_out_2_1_60)
  );
  LDCPE   mux_out_3_1 (
    .CLR(mux_out_3__and0000),
    .D(mux_out_3_mux0000_70),
    .G(sel_1_IBUF_74),
    .GE(sel_0_IBUF_72),
    .PRE(mux_out_3__and0001),
    .Q(mux_out_3_1_66)
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

