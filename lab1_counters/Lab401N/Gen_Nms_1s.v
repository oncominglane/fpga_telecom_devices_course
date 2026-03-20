`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:11 09/12/2025 
// Design Name: 
// Module Name:    Gen_Nms_1s 
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
`define N 21
module Gen_Nms_1s (input clk, output wire CEO,
						 input ce,
						 input Tmod);
parameter F1kHz=1000;
parameter F1Hz=1;
reg[9:0]cb_Nms = 0;
wire[9:0]Nms = Tmod? `N-1 : ((F1kHz/F1Hz)-1);
assign CEO = ce & (cb_Nms==0);
always @(posedge clk) if (ce) begin
cb_Nms <= (cb_Nms==0)? Nms : cb_Nms-1;
end
endmodule 