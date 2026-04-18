`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:54 12/16/2017 
// Design Name: 
// Module Name:    Gen_SIN 
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
module Gen_SIN(		output reg S=1,	//S=1	sin>0
		input clk,		output reg [7:0] X=0, //Xmin<=X<=Xmax
		input ce,		output wire [10:0] Y,	//Y=NA*sin(2*pi*X/NP)
		input[7:0]M,	output wire [11:0] SIN, //SIN = S? Y : -Y	
							output wire ceo);
							
parameter NP=100 ; //Число точек
parameter Xmin=0 ;
parameter Xmax=NP/4 ;	//Xmax=`NP/4=250,
reg up=1 ;			//Триггер направления счета
assign ceo = ce & (X==Xmin) & !S ;
//wire [11:0]SH=2048 ;
wire [19:0]MY=Y*M ;//Умножение на M
wire[10:0] AY = MY >> 7 ;//Деление на 128

always @ (posedge clk) if (ce) begin
X<= up? X+1 : X-1  ; 	//Генератор "пилы"	
up <= (X==Xmin+1)? 1 : (X==Xmax-1)? 0 : up ; 
S <= ((X==Xmin+1) & !up)? !S : S ;
end
//Y=NA*sin(2*pi*X/NP), NA=2000-амплитуда, NP=100 - число точек
assign Y=	(X==0)? 0  :
	(X==1)? 126 :
	(X==2)? 251 :
	(X==3)? 375 :
	(X==4)? 497 :
	(X==5)? 618 :
	(X==6)? 736 :
	(X==7)? 852 :
	(X==8)? 964 :
	(X==9)? 1072 :
	(X==10)? 1176 :
	(X==11)? 1275 :
	(X==12)? 1369 :
	(X==13)? 1458 :
	(X==14)? 1541 :
	(X==15)? 1618 :
	(X==16)? 1689 :
	(X==17)? 1753 :
	(X==18)? 1810 :
	(X==19)? 1860 :
	(X==20)? 1902 :
	(X==21)? 1937 :
	(X==22)? 1965 :
	(X==23)? 1984 :
	(X==24)? 1996 :
	(X==25)? 2000 : 0 ;
			
assign SIN = S? AY: -AY;

endmodule
