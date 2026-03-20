`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:44 09/05/2025
// Design Name:   VCBDmSE
// Module Name:   C:/FRKT/Golenskikh/Lab401N/VCBDmSE_test_fixture.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VCBDmSE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VCBDmSE_test_fixture;

	// Inputs
	reg ce;
	reg clk;
	reg s;

	// Outputs
	wire [3:0] Q;
	wire TC;
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	VCBDmSE uut (
		.ce(ce), 
		.Q(Q), 
		.clk(clk), 
		.TC(TC), 
		.s(s), 
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

		s = 0;
		#180; s = 1; //Через 92 нс 1
		#60; s = 0; // Через 5 нс 0
		#60; s = 1; //Через 111 нс 1
		#60; s = 0; // Через 70 нс 0

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

