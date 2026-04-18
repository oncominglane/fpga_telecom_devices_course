`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:13 11/29/2017 
// Design Name: 
// Module Name:    Gen_PW_1bit 
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
module Gen_PW_1bit(
    input clk,			output reg PW=0,
    input st);
parameter Fclk=50000000;
parameter F1 =		 1200;
reg [15:0]cb_PW=0;    
wire  ce_end= (cb_PW==Fclk/F1);   

always @ (posedge clk) begin
cb_PW <= st? 1 : PW? cb_PW+1 : cb_PW ;
PW <= st? 1 : ce_end? 0 : PW ;
end
endmodule
