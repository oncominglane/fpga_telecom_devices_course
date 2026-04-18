`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:49 12/17/2017 
// Design Name: 
// Module Name:    RX_FSK_byte_Tocd 
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
module RX_FSK_byte_Tocd(
		input [11:0]FSK_SH,	output wire [11:0] DFSK_SH,
		input clk,				output wire [11:0] mod_DFSK,
									output wire [10:0] bf_AMP,
									output wire [11:0] bf_SH,
									output wire OCD,
									output wire FSK_start,
									output wire FSK_tact,
									output wire FSK_en_rx,
									output wire FSK_res,
									output wire [5:0]Pic_T_OCD,//Пиковый детектор длительности импульсов OCD
									output wire [5:0]T_OCD_max,/*Максимальное значение длительности импульса OCD*/
									output wire ce_ADC,
									output wire URXD,
									output wire en_rx_byte,
									output wire ok_rx_byte,
    					  			output wire [7:0] RX_dat,
									output wire [3:0]UART_cb_bit);																					
//--Детектор FSK бита по числу импульсов OCD												
DET_FSK_bit_Tocd DD1 (.FSK_SH(FSK_SH),	.DFSK_SH(DFSK_SH),
							 .clk(clk),			.mod_DFSK(mod_DFSK),
													.ce_ADC(ce_ADC),
													.bf_AMP(bf_AMP),
													.bf_SH(bf_SH),
													.OCD(OCD),
													.FSK_start(FSK_start),
													.FSK_en_rx(FSK_en_rx),
													.FSK_tact(FSK_tact),
													.Pic_T_OCD(Pic_T_OCD),
													.T_OCD_max(T_OCD_max),
													.FSK_res(FSK_res),
													.RX_bit(URXD));		
//--Приемник байта									
URXD1B DD2 (.inp(URXD),		.rx_dat(RX_dat),
    			.clk(clk),		.ok_rx_byte(ok_rx_byte),
									.cb_bit(UART_cb_bit),
									.en_rx_byte(en_rx_byte));																															
endmodule
