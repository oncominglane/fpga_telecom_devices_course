`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:40 01/16/2018
// Design Name:   Test_DET_FSK_bit
// Module Name:   D:/Proj2018/MIPT/Labs/FPGA_Lab_TKU/Lab414_TS95/tf_Test_DET_FSK_bit.v
// Project Name:  Lab414_TS95
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test_DET_FSK_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Test_DET_FSK_bit;

	// Inputs
	reg TX_bit;
	reg clk;
	reg st;
	reg [7:0] M;

	// Outputs
	wire T_bit;
	wire [11:0] FSK_SH;
	wire [11:0] DFSK_SH;
	wire [11:0] mod_DFSK;
	wire S;
	wire ce_ADC;
	wire [12:0] SH;
	wire [11:0] AMP;
	wire OCD;
	wire FSK_start;
	wire FSK_tact;
	wire FSK_en_rx;
	wire FSK_res;
	wire [5:0] Pic_T_OCD;
	wire [5:0] T_OCD_max;
	wire RX_bit;

	// Instantiate the Unit Under Test (UUT)
	Test_DET_FSK_bit uut (
		.TX_bit(TX_bit), 
		.T_bit(T_bit), 
		.clk(clk), 
		.FSK_SH(FSK_SH), 
		.st(st), 
		.DFSK_SH(DFSK_SH), 
		.M(M), 
		.mod_DFSK(mod_DFSK), 
		.S(S), 
		.ce_ADC(ce_ADC), 
		.SH(SH), 
		.AMP(AMP), 
		.OCD(OCD), 
		.FSK_start(FSK_start), 
		.FSK_tact(FSK_tact), 
		.FSK_en_rx(FSK_en_rx), 
		.FSK_res(FSK_res), 
		.Pic_T_OCD(Pic_T_OCD), 
		.T_OCD_max(T_OCD_max), 
		.RX_bit(RX_bit)
	);
always begin clk=0; #10; clk=1; #10; end
initial begin		
		st = 0;	TX_bit = 1;	M = 0;	
#358500;	st = 1;	TX_bit = 1;	M = 128; //Старт сигнала первого бита
#20;		st = 0;							
#833000;	st = 1;	TX_bit = 0; // Старт сигнала второго бита		
#20;		st = 0;	
end

endmodule

