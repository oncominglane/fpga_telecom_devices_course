`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:38 09/12/2025 
// Design Name: 
// Module Name:    VCB4RE 
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
module VCB4RE (input ce, output reg [`m-1:0] Q = 0,
 input clk, output wire TC,
 input R, output wire CEO);
assign TC = (Q==15) ;
assign CEO = ce & TC ;
always @ (posedge clk) begin
Q <= R? 0 : ce? Q+1 : Q ;
end
endmodule 
