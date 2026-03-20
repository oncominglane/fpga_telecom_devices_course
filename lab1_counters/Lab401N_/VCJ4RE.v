`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:48 09/12/2025 
// Design Name: 
// Module Name:    VCJ4RE 
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
`define m 4
module VCJ4RE (input ce, output wire TC,
					input clk, output wire CEO,
					input R, output reg[`m-1:0] Q = 0);
assign TC = (Q==(1<<`m)-1) ;
assign CEO = ce & TC ;
always @ (posedge clk) begin
	Q <= R? 0 : ce? Q<<1 | !Q[`m-1] : Q ;
	end
endmodule
