`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:18 09/12/2025
// Design Name:   Gen_P
// Module Name:   C:/FRKT/Golenskikh/Lab401N/Gen_P_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_P
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Gen_P_tf;

	// Inputs
	reg [1:0] ptr;
	reg [1:0] adr_An;

	// Outputs
	wire seg_P;

	// Instantiate the Unit Under Test (UUT)
	Gen_P uut (
		.ptr(ptr), 
		.seg_P(seg_P), 
		.adr_An(adr_An)
	);

	initial begin
		// Initialize Inputs
		ptr = 0;
		adr_An = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

