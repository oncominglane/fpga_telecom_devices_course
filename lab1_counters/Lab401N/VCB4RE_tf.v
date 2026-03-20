`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:07 09/12/2025
// Design Name:   VCB4RE
// Module Name:   C:/FRKT/Golenskikh/Lab401N/VCB4RE_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCB4RE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VCB4RE_tf;

	// Inputs
	reg ce;
	reg clk;
	reg R;

	// Outputs
	wire [3:0] Q;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	VCB4RE uut (
		.ce(ce), 
		.Q(Q), 
		.clk(clk), 
		.TC(TC), 
		.R(R), 
		.CEO(CEO)
	);

	initial begin
		// Initialize Inputs
		ce = 0;
		clk = 0;
		R = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

