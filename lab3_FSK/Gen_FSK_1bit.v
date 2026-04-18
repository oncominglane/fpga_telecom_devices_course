`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:24 11/29/2017 
// Design Name: 
// Module Name:    Gen_FSK_1bit 
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
module Gen_FSK_1bit(
    input clk,			output wire [11:0]FSK_SH,
    input st,			output wire S,
    input D,			output wire T_bit,
    input [7:0] M,	output wire ce_SIN);
	 
parameter SH=2048 ;	 
wire[11:0]SIN ; 
assign FSK_SH = T_bit? SIN+SH : SH ; 
//--Ждущий генератор импульса Tbit=834us (1/1200Hz)
Gen_PW_1bit DD1 (	.clk(clk),	.PW(T_bit),
						.st(st));   
//---Генератор ce для Gen_SIN (D=1 Fce=120kHz, D=0 Fce=220kHz)
Gen_Tce DD2 (	.clk(clk),	.CO(ce_SIN),
					.D(D));					
//---Генератор "синусоиды"--------------------				
Gen_SIN DD3 (	.clk(clk),		.SIN(SIN), //SIN = S? Y : -Y ;
					.ce(ce_SIN),	.S(S),	//S=1	sin>0
					.M(M));
					
endmodule
