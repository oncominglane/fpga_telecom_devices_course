`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:39 12/17/2017 
// Design Name: 
// Module Name:    Gen_FSK_UART_byte 
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
module Gen_FSK_UART_byte(
				input [7:0]TX_dat,	output wire UTXD,//Последовательные данные
				input clk,				output wire [3:0]cb_bit,//Счетчик бит
				input st,				output wire en_tx,//Интервал передачи байта
				input [7:0]M,			output wire S,//Знак синусоиды													
											output wire [11:0] FSK_SH,//Синал FSK со смещением									
											output wire ce_SIN);//Сигнал дискретизации											
wire ce_tact, T_stop ;
//---UART передатчик одного байта-------------
UTXD1B DD1 (.clk(clk),		.TXD(UTXD),//Выход 
    			.dat(TX_dat),	.en_tx_byte(en_tx),//Интервал передачи
    			.st(st),			.cb_bit(cb_bit),
									.ce_tact(ce_tact),
									.T_stop(T_stop));
									
//--Генератор 1 бита FSK								
wire st_bit= st | (ce_tact & en_tx & !T_stop) ;//Импулсы запуска генератора бита FSK
Gen_FSK_1bit DD2 (.clk(clk),		.FSK_SH(FSK_SH),
						.st(st_bit),	.S(S),
						.D(UTXD),		.ce_SIN(ce_SIN),
						.M(M)			
						);
						
endmodule
