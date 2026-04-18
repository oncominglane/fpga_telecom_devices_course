`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:53 12/06/2017 
// Design Name: 
// Module Name:    FSK_RXD 
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
module FSK_RXD(				output wire [7:0] rx_dat,
		input [11:0]FSK_IN,	output wire [15:0] AMPdec,//
		input clk,				output wire [15:0] SHdec,//
									output wire URXD,//JD2
									output wire OCD,//JD3									
									output wire st_SADC,
									output wire en_rx_byte,
									output wire FSK_res);//JD4
    
wire ok_rx_byte ;
wire [11:0]AMP ; wire [12:0]SH ;
  
RX_FSK_byte_Tocd DD1 (		
				.clk(clk),			.RX_dat(rx_dat),
				.FSK_SH(FSK_IN),	.en_rx_byte(en_rx_byte),
										.URXD(URXD),
										.OCD(OCD),
										.bf_AMP(AMP),
										.bf_SH(SH),
										.ok_rx_byte(ok_rx_byte),
										.ce_ADC(st_SADC),
										.FSK_res(FSK_res));

BIN12_to_DEC4 DD2 (	.BIN(AMP), 			.DEC(AMPdec),     
							.st(ok_rx_byte),     
							.clk(clk)); 
       
BIN12_to_DEC4 DD3 (	.BIN(SH), 			.DEC(SHdec),     
							.st(ok_rx_byte),     
							.clk(clk));
endmodule
