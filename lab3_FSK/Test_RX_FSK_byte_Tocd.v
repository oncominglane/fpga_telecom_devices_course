`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:45 12/17/2017 
// Design Name: 
// Module Name:    Test_RX_FSK_byte_Tocd 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Test_RX_FSK_byte_Tocd(
		input clk,				output wire [11:0]FSK_SH,
		input [7:0]TX_dat,	output wire UTXD,
		input start,			output wire [3:0]cb_bit_tx,
		input [7:0]M,			output wire en_tx,
									output wire S,
								
									output wire [11:0]DFSK_SH,
									output wire [11:0]mod_DFSK,
									output wire OCD,
									output wire [10:0] bf_AMP,
									output wire [11:0] bf_SH,
									output wire FSK_start,
									output wire FSK_en_rx,
									output wire FSK_tact,
									output wire [5:0]T_OCD_max,
									output wire FSK_res,
									output wire URXD,
									output wire ok_rx_byte,
									output wire [7:0] RX_dat,
									output wire [3:0]UART_cb_bit);	
Gen_FSK_UART_byte DD1 (
			.TX_dat(TX_dat),	.UTXD(UTXD),
			.clk(clk),			.cb_bit(cb_bit_tx),
			.st(start),			.en_tx(en_tx),
			.M(M),				.S(S),
									.FSK_SH(FSK_SH));											

RX_FSK_byte_Tocd DD2 (
			.FSK_SH(FSK_SH),	.DFSK_SH(DFSK_SH),
			.clk(clk),			.mod_DFSK(mod_DFSK),
									.bf_AMP(bf_AMP),
									.bf_SH(bf_SH),
									.OCD(OCD),
									.FSK_start(FSK_start),
									.FSK_en_rx(FSK_en_rx),
									.FSK_tact(FSK_tact),
									.FSK_res(FSK_res),
									.T_OCD_max(T_OCD_max),
									.URXD(URXD),
									.ok_rx_byte(ok_rx_byte),
									.RX_dat(RX_dat),
									.UART_cb_bit(UART_cb_bit));									
endmodule
					