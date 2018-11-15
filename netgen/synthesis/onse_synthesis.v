////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.40xd
//  \   \         Application: netgen
//  /   /         Filename: onse_synthesis.v
// /___/   /\     Timestamp: Thu Nov 15 01:28:37 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim onse.ngc onse_synthesis.v 
// Device	: xc5vlx20t-2-ff323
// Input file	: onse.ngc
// Output file	: F:\Semester Project\8085\mICRO\netgen\synthesis\onse_synthesis.v
// # of Modules	: 1
// Design Name	: onse
// Xilinx        : C:\Xilinx\14.3\ISE_DS\ISE\
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

module onse (
A, I
);
  output [3 : 0] A;
  input [2 : 0] I;
  wire A_0_4;
  wire A_1_5;
  wire A_2_6;
  wire A_3_7;
  wire A_cmp_eq0003;
  wire I_0_IBUF_15;
  wire I_1_IBUF_16;
  wire I_2_IBUF_17;
  wire [2 : 0] A_mux0003;
  LD   A_0 (
    .D(A_mux0003[0]),
    .G(A_mux0003[0]),
    .Q(A_0_4)
  );
  LD   A_1 (
    .D(A_mux0003[1]),
    .G(A_mux0003[0]),
    .Q(A_1_5)
  );
  LD   A_2 (
    .D(A_mux0003[2]),
    .G(A_mux0003[0]),
    .Q(A_2_6)
  );
  LD   A_3 (
    .D(A_cmp_eq0003),
    .G(A_mux0003[0]),
    .Q(A_3_7)
  );
  LUT3 #(
    .INIT ( 8'h18 ))
  \A_mux0003<2>1  (
    .I0(I_0_IBUF_15),
    .I1(I_1_IBUF_16),
    .I2(I_2_IBUF_17),
    .O(A_mux0003[2])
  );
  LUT3 #(
    .INIT ( 8'h36 ))
  \A_mux0003<0>2  (
    .I0(I_1_IBUF_16),
    .I1(I_2_IBUF_17),
    .I2(I_0_IBUF_15),
    .O(A_mux0003[0])
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \A_mux0003<0>11  (
    .I0(I_1_IBUF_16),
    .I1(I_2_IBUF_17),
    .I2(I_0_IBUF_15),
    .O(A_cmp_eq0003)
  );
  IBUF   I_2_IBUF (
    .I(I[2]),
    .O(I_2_IBUF_17)
  );
  IBUF   I_1_IBUF (
    .I(I[1]),
    .O(I_1_IBUF_16)
  );
  IBUF   I_0_IBUF (
    .I(I[0]),
    .O(I_0_IBUF_15)
  );
  OBUF   A_3_OBUF (
    .I(A_3_7),
    .O(A[3])
  );
  OBUF   A_2_OBUF (
    .I(A_2_6),
    .O(A[2])
  );
  OBUF   A_1_OBUF (
    .I(A_1_5),
    .O(A[1])
  );
  OBUF   A_0_OBUF (
    .I(A_0_4),
    .O(A[0])
  );
  LUT3 #(
    .INIT ( 8'h26 ))
  \A_mux0003<1>1  (
    .I0(I_1_IBUF_16),
    .I1(I_2_IBUF_17),
    .I2(I_0_IBUF_15),
    .O(A_mux0003[1])
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

