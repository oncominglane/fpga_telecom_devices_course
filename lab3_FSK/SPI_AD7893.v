`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:27 12/01/2017 
// Design Name: 
// Module Name:    SPI_AD7893 
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
module SPI_AD7893(
		input clk,		output wire SCLK,		//Импульсы синхронизации
		input SDAT,		output reg st_ADC=1,//
		input st,		output reg [11:0]ADC_dat=0);//
														
reg [11:0]sr_DAT=0;
reg [4:0]cb_bit=0;
reg T_CONV=0;
reg ok_adc=0;
reg [2:0]cb_ce=0 ;
wire ce=(cb_ce==7);
reg [7:0]cb_T_CONV=0 ;
wire end_T_CONV = (cb_T_CONV==40) & ce ;//200*25=8000ns

wire stop_SCLK = (cb_bit==15) & ce;
reg en_SCLK=0 ;
assign SCLK = cb_ce[2] & en_SCLK ;
wire start = st & !(T_CONV | en_SCLK) ; 
 
always @ (posedge clk) begin
cb_ce <= st? 0 : cb_ce+1 ;  
st_ADC <= start? 0 : ce? 1 : st_ADC ;
cb_T_CONV <= start? 1 : (T_CONV & ce)? cb_T_CONV+1 : cb_T_CONV ;
T_CONV <= start? 1 : end_T_CONV? 0 : T_CONV ;
en_SCLK <= end_T_CONV? 1 : stop_SCLK? 0 : en_SCLK ;
cb_bit <= start? 0 : (en_SCLK & ce)? cb_bit+1 : cb_bit ;
sr_DAT <= start? 0 : (ce & en_SCLK)? sr_DAT<<1 | SDAT : sr_DAT ;
ok_adc <= (stop_SCLK & ce)? 1 : 0 ;
ADC_dat <= (ok_adc)? sr_DAT : ADC_dat ;
end

endmodule 