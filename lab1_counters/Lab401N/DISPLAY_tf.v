`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:02 09/12/2025
// Design Name:   DISPLAY
// Module Name:   C:/FRKT/Golenskikh/Lab401N/DISPLAY_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DISPLAY
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DISPLAY_tf;

	// Inputs
	reg clk;
	reg [15:0] dat;
	reg [1:0] PTR;

	// Outputs
	wire [3:0] AN;
	wire [7:0] SEG;
	wire ce1ms;

	// Instantiate the Unit Under Test (UUT)
	DISPLAY uut (
		.clk(clk), 
		.AN(AN), 
		.dat(dat), 
		.SEG(SEG), 
		.PTR(PTR), 
		.ce1ms(ce1ms)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		dat = 0;
		PTR = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

