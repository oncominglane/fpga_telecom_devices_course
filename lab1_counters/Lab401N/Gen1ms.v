`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:36 09/12/2025 
// Design Name: 
// Module Name:    Gen1ms 
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
module Gen1ms (input clk, output wire ce1ms);

parameter Fclk =50000000; // „астота генератора синхронизации 50 ћ√ц
parameter F1kHz =1000; // „астота 1 к√ц
reg[15:0]cb_ms = 0; // —четчик миллисекунды
assign ce1ms = (cb_ms==1); //1 милисекунда
//ƒелитель частоты
always @(posedge clk) begin
		cb_ms <= ce1ms? ((Fclk/F1kHz)) : cb_ms-1; // —чет миллисекунд
	end
endmodule
