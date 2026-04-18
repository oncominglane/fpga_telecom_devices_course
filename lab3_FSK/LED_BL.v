`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:15 12/02/2017 
// Design Name: 
// Module Name:    LED_BL 
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
module LED_BL(
    input [7:0] DI,	output wire [7:0] DO,
    input E );    
assign DO= DI | {8{E}} ;   
endmodule
