`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:21:37 11/28/2017
// Design Name:   Test_Gen_ce
// Module Name:   D:/Proj2017/MIPT/LABs/FPGA_LAB_TKU_2018/Lab414_Sadc/tf_Test_Gen_ce.v
// Project Name:  Lab414_Sadc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test_Gen_ce
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Test_Gen_ce;

	// Inputs
	reg clk;
	reg D;

	// Outputs
	wire Fce;
	wire Tce;

	// Instantiate the Unit Under Test (UUT)
	Test_Gen_ce uut (
		.clk(clk), 
		.Fce(Fce), 
		.D(D), 
		.Tce(Tce)
	);
always begin clk=0; #10; clk=1; #10; end
	initial begin
			D = 0;
#100000;	D = 1;
	end
      
endmodule

