`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:42:15 01/15/2018
// Design Name:   Test_RX_FSK_byte_Tocd
// Module Name:   D:/Proj2018/MIPT/Labs/FPGA_Lab_TKU/Lab414_TS95/tf_Test_RX_FSK_byte_Tocd.v
// Project Name:  Lab414_TS95
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test_RX_FSK_byte_Tocd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_Test_RX_FSK_byte_Tocd;

	// Inputs
	reg clk;
	reg [7:0] TX_dat;
	reg start;
	reg [7:0] M;

	// Outputs
	wire [11:0] FSK_SH;
	wire UTXD;
	wire [3:0] cb_bit_tx;
	wire en_tx;
	wire S;
	wire [11:0] DFSK_SH;
	wire [11:0] mod_DFSK;
	wire OCD;
	wire [10:0] bf_AMP;
	wire [11:0] bf_SH;
	wire FSK_start;
	wire FSK_en_rx;
	wire FSK_tact;
	wire [5:0] T_OCD_max;
	wire FSK_res;
	wire URXD;
	wire ok_rx_byte;
	wire [7:0] RX_dat;
	wire [3:0] UART_cb_bit;

	// Instantiate the Unit Under Test (UUT)
	Test_RX_FSK_byte_Tocd uut (
		.clk(clk), 
		.FSK_SH(FSK_SH), 
		.TX_dat(TX_dat), 
		.UTXD(UTXD), 
		.start(start), 
		.cb_bit_tx(cb_bit_tx), 
		.M(M), 
		.en_tx(en_tx), 
		.S(S), 
		.DFSK_SH(DFSK_SH), 
		.mod_DFSK(mod_DFSK), 
		.OCD(OCD), 
		.bf_AMP(bf_AMP), 
		.bf_SH(bf_SH), 
		.FSK_start(FSK_start), 
		.FSK_en_rx(FSK_en_rx), 
		.FSK_tact(FSK_tact), 
		.T_OCD_max(T_OCD_max), 
		.FSK_res(FSK_res), 
		.URXD(URXD), 
		.ok_rx_byte(ok_rx_byte), 
		.RX_dat(RX_dat), 
		.UART_cb_bit(UART_cb_bit)
	);
always begin clk=0; #10; clk=1; #10; end
	initial begin
			start = 0;	M = 0;	TX_dat = 8'h00;
#100000; start = 1;	M = 128;	TX_dat = 8'h55;
#20; 		start = 0;	
        
		// Add stimulus here

	end
      
endmodule

