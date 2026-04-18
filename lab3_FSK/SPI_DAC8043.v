`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:17 01/15/2018 
// Design Name: 
// Module Name:    SPI_DAC8043 
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
module SPI_DAC8043(	input clk,			 	output reg SCLK=0,
							input st,		 		output wire SDAT,
							input [11:0] DI,		output reg NLD=1,
														output reg [3:0]cb_bit=0,
														output wire ce);
														
parameter Tsclk = 240 ;//Tsclk=Tcl+Tch=120+120																						
parameter Tclk = 20 ;
reg [3:0]cb_ce = 0 ;
assign ce=(cb_ce==Tsclk/Tclk-1);    
reg en_sh=0 ;
reg [11:0]sr_dat=0 ;	
assign SDAT = sr_dat[11]; 
 
always @ (posedge clk) begin
cb_ce <= (st | ce)? 0 : cb_ce+1 ;
SCLK <= (st | ce)? 0 : (en_sh & (cb_ce==5))? 1 : SCLK ;
en_sh <= st? 1 : ((cb_bit==11) & ce)? 0 : en_sh ;
cb_bit <= st? 0 : (en_sh & ce)? cb_bit+1 : cb_bit ;
sr_dat <= st? DI : (en_sh & ce)? sr_dat<<1 : sr_dat ;
NLD <= st? 1 : ce? !(cb_bit==11) : NLD ;
end
endmodule
