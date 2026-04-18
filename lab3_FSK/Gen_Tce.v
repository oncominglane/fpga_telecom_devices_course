`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:44 11/29/2017 
// Design Name: 
// Module Name:    Gen_Tce 
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
module Gen_Tce(
    input clk,		output reg CO=0,
    input D);
parameter Fclk=50000000 ;//Fclk=50MHz
parameter NP = 100  ;//Число точек синусоиды
parameter F1 = 1200 ;//Частота сигнала "1"
parameter F0 = 2200 ;//Частота сигнала "0"

wire [8:0]Nt = D? Fclk/(F1*NP) : Fclk/(F0*NP) ;
reg [8:0]cb_ce=0 ;     
wire ce = (cb_ce==Nt) ;

always @ (posedge clk) begin
cb_ce <= ce? 1 : cb_ce+1 ;
CO <= ce ;
end
endmodule
