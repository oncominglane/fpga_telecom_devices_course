`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:51 09/12/2025
// Design Name:   Gen1ms
// Module Name:   C:/FRKT/Golenskikh/Lab401N/Gen1ms_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen1ms
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Gen1ms_tf;

	// Inputs
	reg clk;

	// Outputs
	wire ce1ms;

	// Instantiate the Unit Under Test (UUT)
	Gen1ms uut (
		.clk(clk), 
		.ce1ms(ce1ms)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

