`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:24:41 09/12/2025
// Design Name:   D7seg
// Module Name:   C:/FRKT/Golenskikh/Lab401N/D7seg_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D7seg_tf;

	// Inputs
	reg [3:0] dig;

	// Outputs
	wire [6:0] seg;

	// Instantiate the Unit Under Test (UUT)
	D7seg uut (
		.dig(dig), 
		.seg(seg)
	);

	initial begin
		// Initialize Inputs
		dig = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

