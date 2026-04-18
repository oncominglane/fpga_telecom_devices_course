`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:02 12/16/2017
// Design Name:   Gen_SIN
// Module Name:   D:/Proj2017/MIPT/LABs/FPGA_LAB_TKU_2018/Lab414_Sadc/tf_Gen_SIN.v
// Project Name:  Lab414_Sadc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_SIN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Gen_SIN;

	// Inputs
	reg clk;
	reg ce;
	reg [7:0] M;

	// Outputs
	wire S;
	wire [7:0] X;
	wire [10:0] Y;
	wire [11:0] SIN;
	wire ceo;

	// Instantiate the Unit Under Test (UUT)
	Gen_SIN uut (
		.S(S), 
		.clk(clk), 
		.X(X), 
		.ce(ce), 
		.Y(Y), 
		.M(M), 
		.SIN(SIN), 
		.ceo(ceo)
	);
always begin clk=0; #10; clk=1; #10; end
	initial begin
		ce = 0;
		M = 128;
#100;	ce = 1;
	end
      
endmodule

