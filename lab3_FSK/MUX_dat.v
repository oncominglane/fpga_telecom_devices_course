`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:15 12/07/2017 
// Design Name: 
// Module Name:    MUX_dat 
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
module MUX_dat(
    input BTN2,		output wire [15:0] E,
    input BTN1,
    input [15:8] AH,
	 input [ 7:0] AL,
	 input [15:0] B,
	 input [15:0] C,
	 input [15:8] DH,
	 input [ 7:0] DL 
    );
wire [1:0]adr= {BTN2,BTN1} ;
assign E = 	(adr==2'b00)? {AH,AL} :
				(adr==2'b01)? B :
				(adr==2'b10)? C :
								  {DH,DL} ;

endmodule
