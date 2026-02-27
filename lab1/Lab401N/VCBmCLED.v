`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:43 09/12/2025 
// Design Name: 
// Module Name:    VCBmCLED 
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
module VCBmCLED(input ce, output reg [`m-1:0] Q =0,
	 input up, output wire CEO,
	 input [`m-1:0] di, output wire TC,
	 input L,
	 input clk,
	 input clr);
assign TC = up? (Q==(1<<`m)-1) : (Q==0) ;
assign CEO = ce & TC ;
always @ (posedge clr or posedge clk) begin
	if (clr) Q <= 0;
	else Q <= L? di : (up & ce)? Q+1 : (!up & ce)? Q-1 : Q ;
	end
endmodule

