`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:18 12/02/2017 
// Design Name: 
// Module Name:    MULT_5000_DIV_4096 
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
module MULT_5000_DIV_4096(
		input [11:0]A, output wire[11:0] B);
		
wire [24:0]MA = A*5050 ;//Номинально 5000    
assign B = MA>>12 ;

endmodule
