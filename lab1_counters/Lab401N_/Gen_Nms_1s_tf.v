`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:33:50 09/12/2025
// Design Name:   Gen_Nms_1s
// Module Name:   C:/FRKT/Golenskikh/Lab401N/Gen_Nms_1s_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_Nms_1s
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Gen_Nms_1s_tf;

	// Inputs
	reg clk;
	reg ce;
	reg Tmod;

	// Outputs
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	Gen_Nms_1s uut (
		.clk(clk), 
		.CEO(CEO), 
		.ce(ce), 
		.Tmod(Tmod)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		Tmod = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

