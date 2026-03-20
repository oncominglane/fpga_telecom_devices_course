`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:50:55 09/12/2025
// Design Name:   VCGrey4Re
// Module Name:   C:/FRKT/Golenskikh/Lab401N/VCGrey4RE_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCGrey4Re
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VCGrey4RE_tf;

	// Inputs
	reg clk;
	reg ce;
	reg r;

	// Outputs
	wire [3:0] Y;
	wire CEO;
	wire TC;

	// Instantiate the Unit Under Test (UUT)
	VCGrey4Re uut (
		.clk(clk), 
		.Y(Y), 
		.ce(ce), 
		.CEO(CEO), 
		.r(r), 
		.TC(TC)
	);
	
	//Генратор периодичеккого сигнала синхронизации clk
	parameter Tclk=20; //Период сигнала синхронизации 20 нс
	always begin
		clk=0;
		#(Tclk/2);
		clk=1;
		#(Tclk/2);
	end
	// Генератор периодического сигнала ce
	parameter Tce=80; //Период сигнала ce 80 нс
	always begin
		ce=0;
		#(3*Tce/4);
		ce=1;
		#(1*Tce/4);
	end
	
	initial begin
		// Initialize Inputs
		r = 0;
		
		#300; r = 1;
		#200; r = 0;
		#200; r = 1;
		#200; r = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

