`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:58 11/29/2017 
// Design Name: 
// Module Name:    Test_DET_FSK_bit 
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
module Test_DET_FSK_bit(
		input TX_bit,		output wire T_bit,//Интервал передачи бит
		input clk,			output wire [11:0]FSK_SH,//Сигнал FSK со смещением
		input st,			output wire [11:0] DFSK_SH,//Задержаный на такт сигнал FSK
		input [7:0]M,		output wire [11:0]mod_DFSK,//Модуль сигнала DFSK	
								output wire S,//Знак синусоиды
								output wire ce_ADC,//Сигнал дискретизации	
								output wire [12:0] SH,//
								output wire [11:0] AMP,//
								output wire OCD,//Импульсы превышения порога модулем DFSK
								output wire FSK_start,//Старт приема сигнала FSK
								output wire FSK_tact,//Такт сигнала FSK
								output wire FSK_en_rx,//Интервал приема сигнала FSK
								output wire FSK_res,//Сброс в паузе
								output wire [5:0]Pic_T_OCD,//
								output wire [5:0] T_OCD_max,//
								output wire RX_bit);//Принятый бит по длителности OCD
//--Генератор 1 бита FSK								 								
Gen_FSK_1bit DD1 (.clk(clk),		.FSK_SH(FSK_SH),
						.st(st),			.S(S),
						.D(TX_bit),		.T_bit(T_bit),
						.M(M));
//--Детектор FSK бита по длительности импульсов OCD												
DET_FSK_bit_Tocd DD2(.FSK_SH(FSK_SH),	.DFSK_SH(DFSK_SH),
							.clk(clk),		.mod_DFSK(mod_DFSK),
												.ce_ADC(ce_ADC),
												.AMP(AMP),
												.SH(SH),
												//.bf_AMP(bf_AMP),
												//.bf_SH(bf_SH),
												.FSK_start(FSK_start),
												.OCD(OCD),
												.FSK_tact(FSK_tact),
												.FSK_en_rx(FSK_en_rx),		
												.FSK_res(FSK_res),
												.Pic_T_OCD(Pic_T_OCD),
												.T_OCD_max(T_OCD_max),
												.RX_bit(RX_bit)
												);												
endmodule
