`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:34 09/05/2025
// Design Name:   VCB2RE
// Module Name:   C:/FRKT/Golenskikh/Lab401N/test_fixture.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCB2RE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fixture;

	// Inputs
	reg ce;
	reg clk;
	reg r;

	// Outputs
	wire Q0;
	wire Q1;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	VCB2RE uut (
		.ce(ce), 
		.Q0(Q0), 
		.clk(clk), 
		.Q1(Q1), 
		.r(r), 
		.TC(TC), 
		.CEO(CEO)
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
		#92; r = 1; //Через 92 нс 1
		#5; r = 0; // Через 5 нс 0
		#111; r = 1; //Через 111 нс 1
		#70; r = 0; // Через 70 нс 0

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

