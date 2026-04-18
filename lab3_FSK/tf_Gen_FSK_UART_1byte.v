`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:42 12/02/2017
// Design Name:   Gen_FSK_UART_1byte
// Module Name:   D:/Proj2017/MIPT/LABs/FPGA_LAB_TKU_2018/Lab414_Sadc/tf_Gen_FSK_UART_1byte.v
// Project Name:  Lab414_Sadc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gen_FSK_UART_1byte
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Gen_FSK_UART_1byte;

	// Inputs
	reg [7:0] DAT;
	reg clk;
	reg st;
	reg [7:0] M;

	// Outputs
	wire UTXD;
	wire [3:0] cb_bit_tx;
	wire en_tx;
	wire ce_tact;
	wire S;
	wire [11:0] FSK_SH;
	wire PW;
	wire ce_SIN;

	// Instantiate the Unit Under Test (UUT)
	Gen_FSK_UART_1byte uut (
		.DAT(DAT), 
		.UTXD(UTXD), 
		.clk(clk), 
		.cb_bit_tx(cb_bit_tx), 
		.st(st), 
		.en_tx(en_tx), 
		.M(M), 
		.ce_tact(ce_tact), 
		.S(S), 
		.FSK_SH(FSK_SH), 
		.PW(PW), 
		.ce_SIN(ce_SIN)
	);
always begin clk=0; #10; clk=1; #10; end
	initial begin
			st = 0;	DAT = 0;	M = 0;
#100000;	st = 1;	DAT = 0;	M = 128;
#20;		st = 0;	DAT = 0;	M = 128;        
	end
      
endmodule

