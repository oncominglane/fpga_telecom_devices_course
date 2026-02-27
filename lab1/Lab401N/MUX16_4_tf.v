`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:07 09/12/2025
// Design Name:   MUX16_4
// Module Name:   C:/FRKT/Golenskikh/Lab401N/MUX16_4_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX16_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX16_4_tf;

	// Inputs
	reg [15:0] dat;
	reg [1:0] adr;

	// Outputs
	wire [3:0] do;

	// Instantiate the Unit Under Test (UUT)
	MUX16_4 uut (
		.dat(dat), 
		.do(do), 
		.adr(adr)
	);

	initial begin
		// Initialize Inputs
		dat = 0;
		adr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

