`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:45 01/15/2018 
// Design Name: 
// Module Name:    V_Sch_Lab414_TS95 
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
module V_Sch_Lab414_TS95(
    input F50MHz,		output wire [3:0] AN,	//Аноды 
		input [7:0]SW,		output wire [6:0] seg,	//Сегменты
		input BTN0,			output wire seg_P,		//Точка
		input BTN3,			output wire [7:0]LED,
		input BTN2,
		input BTN1,
					//--Выводы к ЦАП DAC8043----	
								//output wire JA4,	//NCS DAC8512
								//output wire JA7,	//NLD DAC8512
								output wire JA8,	//SCLK DAC8512
								output wire JA9,	//SDAT DAC8512		
								output wire JA10,	//MLD DAC8512
								
								output wire JB1, //en_tx
								output wire JB2, //UTXD
								output wire JB3, //S
								output wire JB4, //
								
								output wire JD1,	//en_rx_byte
								output wire JD2,	//URXD
								output wire JD3,	//OCD
								output wire JD4,	//ce_ADC
					//--Выводы к АЦП AD7893----	
								output wire JC7,	//SCLK AD7895
			input JC8,								//SDAT AD7895
			input JC9,								//BUSY AD7895
								output wire JC10);//CONVST AD7895
								
wire clk, ce1ms, ce100ms, st_SDAC  ;
assign JB4=st_SDAC ;
wire BUSY=JC9 ;//Интервал АЦП
//--Глобальный буфер сигнала синхронизации
BUFG DD0 (.I(F50MHz),	.O(clk));

//--Генератор FSK байта-------------------------------
wire [11:0]FSK_OUT ;
wire [7:0]M ;//Множитель M от кнопочного регулятора амплитуды
Gen_FSK_UART_byte DD1 (
			.M(M),			.en_tx(JB1),
			.TX_dat(SW),	.UTXD(JB2),
			.clk(clk),		.S(JB3),	
			.st(ce100ms),	.FSK_SH(FSK_OUT),
								.ce_SIN(st_SDAC));

//--Цифроаналоговый преобразователь---------------------																		
SPI_DAC8043 DD2 (			.SCLK(JA8), //Сигнал синхронизации
			.st(st_SDAC), 	.SDAT(JA9), //Последовательные данные
			.clk(clk),		.NLD(JA10), //Асинхронная загрузка
			.DI(FSK_OUT));
			
//---Приемник FSK байта---------------------------------															
wire [11:0]FSK_RX ;
wire [11:0]MFSK_RX ; 
wire st_SADC, ok_rx_byte, en_rx_byte ;
assign JD4=st_SADC ;
wire[7:0] rx_dat ;
wire [11:0]AMP ; 
wire [11:0] SH ;
assign JD1 = en_rx_byte ;									
wire [11:0]FSK_IN = (BTN2 & BTN1)? FSK_OUT : MFSK_RX ;

RX_FSK_byte_Tocd DD3 (		.RX_dat(rx_dat),
			.clk(clk),			.en_rx_byte(en_rx_byte),
			.FSK_SH(FSK_IN),	.URXD(JD2),
									.OCD(JD3),//	.st(ce100ms),
									.bf_AMP(AMP),
									.bf_SH(SH),
									.ok_rx_byte(ok_rx_byte),
									.ce_ADC(st_SADC));
									
//---Аналого цифровой преобразователь-------------------
SPI_AD7895 DD4 (
		.clk(clk),		.SCLK(JC7),		//Импульсы синхронизации
		.SDAT(JC8),		.st_ADC(JC10),//
		.st(st_SADC),	.ADC_dat(FSK_RX),
		.BUSY(BUSY));
//---Умножитель на 5000/4096-----------------------
MULT_5000_DIV_4096 DD5 (.A(FSK_RX), .B(MFSK_RX));		
//--Кнопочный регулятор  амплитуды FSK------------
BTN_REG_AMP DD6 (	.clk(clk),			.M(M),//Множитель
						.BTN_UP(BTN3),		//Кнопка сдвига влево (умножение на 2)
						.BTN_DOWN(BTN0),	//Кнопка сдвига вправо (деление на 2)
						.ce(ce1ms));						
//--Преобразователь двоичного числа AMPbin в двоично десятичное AMPdec
wire [15:0]AMPdec ;
BIN12_to_DEC4 DD7 (	.BIN(AMP),	.DEC(AMPdec),
							.clk(clk),
							.st(ok_rx_byte));
//--Преобразователь двоичного числа SHbin в двоично десятичное SHdec
wire [15:0]SHdec ;
BIN12_to_DEC4 DD8 (	.BIN(SH),	.DEC(SHdec),
							.clk(clk),
							.st(ok_rx_byte));
							
wire [1:0]BTN = {BTN2,BTN1} ;											
wire [15:0]disp_dat = (BTN==0)? {SW,rx_dat} : 
							 (BTN==1)?	AMPdec :
							 (BTN==2)?	SHdec : {SW,rx_dat} ;
							 
//--Семи сегментный светодиодный индикатор 
DISPLAY DD9 (	.clk(clk),			.AN(AN), 			//Аноды
					.dat(disp_dat),	.seg(seg),			//Сегменты
					.BTN2(BTN2),		.seg_P(seg_P), 	//Точка
					.BTN1(BTN1),		.ce1ms(ce1ms),		//1 милисекунда
											//.ce10ms(ce10ms),	//10 милисекунд
											.ce100ms(ce100ms));	//0.1 секунды
											
//--Модуль включения светодиодов											
LED_BL DD10 (	.DI(M),				.DO(LED),
					.E(en_rx_byte));
endmodule
