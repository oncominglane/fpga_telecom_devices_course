`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:01 12/01/2017 
// Design Name: 
// Module Name:    SPI_DAC8512 
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
module SPI_DAC8512(	output wire SDAT, //Последовательные данные
    input clk, 		output wire SCLK, //Сигнал синхронизации
    input st,			output reg NCS=1, //Выбор кристалла
    input [11:0] DI, output reg NLD=1, //Асинхронная загрузка
							output reg NCLR=1); //Асинхронная сброс
														   
parameter Tsclk = 160 ; //Tsclk=Tcl+Tch=80+80 ns
parameter Tclk = 20 ; //Период сигнала синхронизации
reg [3:0]cb_ce=0;//Счетчик тактов
wire ce = (cb_ce==Tsclk/Tclk) ;
assign SCLK = cb_ce[2] | NCS ;
reg[3:0]cb_bit=0 ;//Счетчик бит
reg [11:0]sr_dat=0;
assign SDAT = sr_dat[11];
always @ (posedge clk) begin
NCLR <= st? 1 : NCLR ;
cb_ce <= (st | ce)? 1 : cb_ce+1 ;
NCS <= st? 0 : ((cb_bit==10) & ce)? 1 : NCS ;
cb_bit <= st? 0 : (!NCS & ce)? cb_bit+1 : cb_bit ;
sr_dat <= st? DI : (ce & !NCS)? sr_dat<<1 : sr_dat ; 
NLD <= st? 1 : ce? !(cb_bit==11) : NLD ;
end

endmodule
