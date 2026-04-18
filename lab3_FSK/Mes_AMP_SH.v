`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:49 11/30/2017 
// Design Name: 
// Module Name:    Mes_AMP_SH 
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
module Mes_AMP_SH(
		input [11:0] FSK_SH,	output wire [11:0] DFSK_SH,//Задержанный сигнал FSK
		input clk,				output wire [12:0] SH,//Смещение
		input res,				output reg [12:0] bf_SH=12'h800,//Среднее смещение
									output wire [12:0] AMP,//Амплитуда
									output reg [12:0] bf_AMP=2000,//Средняя амплитуда
									output wire ce_ADC);//input st,
parameter Fclk=50000000 ; //Fclk=50MHz
parameter F1=1200 ; //F1=1200Hz
parameter ND=100 ; //Число тактов задержки

reg [10:0] cb_ce =0 ;    
assign ce_ADC = (cb_ce==Fclk/(F1*ND)) ;
reg [6:0] Adr_wr=0 ;
wire [6:0] Adr_rd = Adr_wr-ND ;//Задержка на Tbit=100*Tce=T1

always @ (posedge clk) begin
cb_ce <= (ce_ADC)? 1 : cb_ce+1 ; //
Adr_wr <= ce_ADC? Adr_wr+1 : Adr_wr ;
end
//--Модуль памяти для задержки сигнала FSK 
MEM12x128 DD2 (.clk(clk),			.DO(DFSK_SH),
					.we(ce_ADC),
					.DI(FSK_SH),
					.Adr_wr(Adr_wr),
					.Adr_rd(Adr_rd));    
    
reg [12:0]PIC_max = 2049;//Регистр пикового детектора максимума сигнала FSK 
reg [12:0]PIC_min = 2047;//Регистр пикового детектора минимума сигнала FSK  
assign SH = (PIC_max+PIC_min)>>1 ;//Полу сумма
assign AMP= (PIC_max-PIC_min)>>1 ;//Полу разность
//--Получение максимума и минимума сигнала FSK
always @ (posedge clk) if (ce_ADC) begin
PIC_max <= res? 12'h801 : (FSK_SH>PIC_max)? FSK_SH : PIC_max ;
PIC_min <= res? 12'h7FF : (FSK_SH<PIC_min)? FSK_SH : PIC_min ;
end
//--Реверсивные следящие измрители смещения и амплитуды
wire [12:0] dAMP = AMP-bf_AMP ;
wire [12:0] mod_dAMP = dAMP[12]? -dAMP : dAMP ;
always @ (posedge clk) if (ce_ADC & res) begin
bf_SH <= (SH[11:0]>bf_SH)? bf_SH+1 : (SH[11:0]<bf_SH)? bf_SH-1 : bf_SH ;
//bf_AMP <= (AMP>bf_AMP)? bf_AMP+1 : (AMP<bf_AMP)? bf_AMP-1 : bf_AMP ;
bf_AMP <= dAMP[12]? bf_AMP-(mod_dAMP>>3) : bf_AMP+(mod_dAMP>>3) ; //(AMP<bf_AMP)? : bf_AMP ;
end

endmodule
