`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:36:22 09/12/2025
// Design Name:   VCBmCLED
// Module Name:   C:/FRKT/Golenskikh/Lab401N/VCBmCLED_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCBmCLED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VCBmCLED_tf;

	// Inputs
	reg ce;
	reg up;
	reg [3:0] di;
	reg L;
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] Q;
	wire CEO;
	wire TC;

	// Instantiate the Unit Under Test (UUT)
	VCBmCLED uut (
		.ce(ce), 
		.Q(Q), 
		.up(up), 
		.CEO(CEO), 
		.di(di), 
		.TC(TC), 
		.L(L), 
		.clk(clk), 
		.clr(clr)
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
		up = 0;
		di = 0;
		L = 0;
		clr = 0;
		
		#100; up = 1;
		#50; di = 1;
		#50 L = 1;
		#100; up = 0;
		#50; di = 0;
		#50; L = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

