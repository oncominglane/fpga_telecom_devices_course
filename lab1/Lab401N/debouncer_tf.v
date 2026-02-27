`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:47:34 09/19/2025
// Design Name:   Debouncer
// Module Name:   C:/FRKT/Golenskikh/Lab401N/debouncer_tf.v
// Project Name:  Lab401N
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debouncer_tf;

	// Inputs
	reg BTN_IN;
	reg clk;
	reg ce1ms;

	// Outputs
	wire BTN_OUT;
	wire Q1;
	wire Q2;

	// Instantiate the Unit Under Test (UUT)
	Debouncer uut (
		.BTN_IN(BTN_IN), 
		.clk(clk), 
		.ce1ms(ce1ms), 
		.BTN_OUT(BTN_OUT), 
		.Q1(Q1), 
		.Q2(Q2)
	);
	
	//Генратор периодичеккого сигнала синхронизации clk
	parameter Tclk=10; //Период сигнала синхронизации 20 нс
	always begin
		clk=0;
		#(Tclk/2);
		clk=1;
		#(Tclk/2);
	end
	// Генератор периодического сигнала ce
	parameter Tce=1000; //Период сигнала ce 80 нс
	always begin
		ce1ms=0;
		#(3*Tce/4);
		ce1ms=1;
		#(1*Tce/4);
	end

	initial begin
		// Initialize Inputs
		BTN_IN = 0;
		#200;
		BTN_IN = 1;
		#300;
		BTN_IN = 0;
		#200;
		BTN_IN = 1;
		#300;
		BTN_IN = 0;
		#300;
		BTN_IN = 1;
		#2000;
		BTN_IN = 0;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

