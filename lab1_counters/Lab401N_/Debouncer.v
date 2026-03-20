`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:47 09/19/2025 
// Design Name: 
// Module Name:    Debouncer 
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
module Debouncer( input BTN_IN, input clk, input ce1ms, 
						output reg BTN_OUT, output reg Q1 = 0, output reg Q2 = 0);

always @(posedge clk) begin
	if (ce1ms) begin
		Q1 <= BTN_IN;
		end
	if (!ce1ms & Q1) begin
		Q2 <= BTN_IN;
		end
	BTN_OUT <= Q1 & !Q2 & ce1ms;
	
	end
endmodule
