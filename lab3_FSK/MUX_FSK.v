`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:49 12/05/2017 
// Design Name: 
// Module Name:    MUX_FSK 
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
module MUX_FSK(
    input s,
    input [11:0] A,	output wire [11:0] C,
    input [11:0] B);
assign C = s? A : B ;    

endmodule
