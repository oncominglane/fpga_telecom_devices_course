`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:25 12/06/2017 
// Design Name: 
// Module Name:    Gen_FSK_Byte 
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
module Gen_FSK_Byte(
					input [7:0] DAT,	output wire UTXD,
					input clk,			output wire en_tx,//JB1
					input st,			output wire S,
					input [7:0]M,		output wire [11:0] FSK_SH,
											output wire ce_SIN);
											
wire ce_tact, T_stop ;
//---UART передатчик одного байта-------------
UTXD1B DD1 (.clk(clk),	.TXD(UTXD),//Выход 
    			.dat(DAT),	.en_tx_byte(en_tx),//Интервал передачи
    			.st(st),		.ce_tact(ce_tact),
								.T_stop(T_stop));								
								
//--Генератор 1 бита FSK								
wire st_bit= st | (ce_tact & en_tx & !T_stop) ;
Gen_FSK_1bit DD2 (.clk(clk),		.FSK_SH(FSK_SH),
						.st(st_bit),	.S(S),
						.D(UTXD),		.ce_SIN(ce_SIN),
						.M(M)	);								
endmodule
