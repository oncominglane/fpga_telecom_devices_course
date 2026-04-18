`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
module DET_FSK_bit_Tocd(	output wire [11:0]mod_DFSK,//Mодуль DFSK
		input [11:0]FSK_SH,	output reg RX_bit=1,//Декодированый бит по длительности OCD
		input clk,				output reg OCD=0,//Output Carry Detect (OCD=(mod_DFSK>=AMP/2))									
									output wire FSK_tact,//Период FSK_tact Ttact=1/F1=1/1200=833us
									output reg [6:0]cb_tact=0,//Счетчик такта
									output wire FSK_start,//Старт приема бит
									output reg FSK_en_rx=0,//Интервал приема бит
									output wire [11:0] AMP,//Амплитуда
									output wire [10:0] bf_AMP,//Буфер амплитуды
									output wire [12:0] SH,//Смещение
									output wire [11:0] bf_SH,//Буфер смещения
									output wire [11:0] DFSK_SH,//
									output wire ce_ADC,//Синал дискретизации
									output reg [5:0]Pic_T_OCD=0,//Пиковый детектор длительности импульсов OCD
									output reg [5:0]T_OCD_max=0,/*Максимальное значение длительности импульса OCD*/
									//output reg [5:0] bf_T_OCD_max = 33,
									output wire FSK_res//Импульс "сброса" в паузе		
									);
parameter Amin=100;		//Минимальная амплитуда
parameter dREF=Amin/4 ;	//Гистерезис компаратора
parameter Fclk=50000000 ;//Частота сигнала синхронизации
parameter F1 = 	 1200 ;//Скорость передачи(частота следования бит)
parameter NP = 100 ;		//Число точек синусоиды сигнала FSK
parameter Fadc= NP*F1 ;	//Частота дискретизации
parameter Nref=21 ;   
//--Измеритель смещения и амплитуды--------
Mes_AMP_SH DD1(
			.FSK_SH(FSK_SH),	.DFSK_SH(DFSK_SH),//Задержанный на такт сигнал FSK_SH
			.clk(clk),			.SH(SH),//Смещение
			.res(FSK_res),		.bf_SH(bf_SH),//Буфер смещения
									.AMP(AMP),//Амплитуда
									.bf_AMP(bf_AMP),//Буфер амплитуды
									.ce_ADC(ce_ADC));//Синал дискретизации
//--------------------------------------------					
wire [11:0]DFSK = DFSK_SH-bf_SH ;//Вычитание среднего смещения
assign mod_DFSK=DFSK[11]? -DFSK : DFSK ;//Абсолютное значение (модуль) DFSK
wire [11:0]REF = AMP>>1 ;//Деление AMP на 2 (REF=AMP/2)
assign FSK_tact = (cb_tact==NP);//Fadc/F1
reg [5:0]cb_T_OCD=0;//Счетчик длительности импульсов OCD
 
reg tOCD=0 ;//
wire front_OCD = (OCD & !tOCD); 
assign FSK_start = front_OCD & !FSK_en_rx ;//

reg [6:0]cb_FSK_res=0;//Счетчик паузы
assign FSK_res = ((cb_FSK_res==(NP/2+5)) & FSK_en_rx);// 
always @ (posedge clk) if (ce_ADC) begin
tOCD <= OCD; 
OCD <=  ((mod_DFSK>=REF+dREF) & (mod_DFSK>Amin))? 1 : (mod_DFSK<=REF-dREF)? 0 : OCD ;
FSK_en_rx <= front_OCD? 1 : FSK_res? 0 : FSK_en_rx ;
cb_FSK_res <= OCD? 0 : FSK_en_rx? cb_FSK_res+1 : cb_FSK_res ;
cb_tact <= (FSK_tact | FSK_start)? 1 : cb_tact+1 ;
cb_T_OCD <= (FSK_tact | front_OCD)? 0 : tOCD? cb_T_OCD+1 : cb_T_OCD ;
Pic_T_OCD <= FSK_tact? 0 : (cb_T_OCD>=Pic_T_OCD)? cb_T_OCD : Pic_T_OCD ;
T_OCD_max <= FSK_tact? Pic_T_OCD : T_OCD_max ;
RX_bit <= (FSK_tact & (Pic_T_OCD<=Nref) & FSK_en_rx)? 0 : (FSK_tact)? 1 : RX_bit ;//  
end


endmodule
