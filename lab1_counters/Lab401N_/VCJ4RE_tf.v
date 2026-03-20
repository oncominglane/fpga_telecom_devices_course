`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:34 09/12/2025
// Design Name:   VCJ4RE
// Module Name:   C:/FRKT/Golenskikh/Lab401N/VCJ4RE_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCJ4RE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VCJ4RE_tf;

	// Inputs
	reg ce;
	reg clk;
	reg R;

	// Outputs
	wire TC;
	wire CEO;
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	VCJ4RE uut (
		.ce(ce), 
		.TC(TC), 
		.clk(clk), 
		.CEO(CEO), 
		.R(R), 
		.Q(Q)
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
		R = 0;
		
		#100; R = 1;
		#50; R = 0;
		#50; R = 1;
		#50; R = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

