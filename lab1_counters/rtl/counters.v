module VCB2CE (
    input  ce,
    input  clk,
    input  clr,
    output reg Q0,
    output reg Q1,
    output wire TC,
    output wire CEO
);

assign TC  = (Q1 & Q0);
assign CEO = ce & TC;

always @(posedge clk or posedge clr) begin
    Q0 <= clr ? 1'b0 : (ce ? ~Q0 : Q0);
    Q1 <= clr ? 1'b0 : ((ce & Q0) ? ~Q1 : Q1);
end

endmodule

module VCB2RE(
    input ce,
    input clk,
    input r,
    output reg Q0,
    output reg Q1,
    output wire TC,
    output wire CEO
);

assign TC  = (Q1 & Q0);
assign CEO = ce & TC;

always @(posedge clk) begin
    Q0 <= r ? 0 : (ce ? !Q0 : Q0);
    Q1 <= r ? 0 : ((ce & Q0) ? !Q1 : Q1);
end

endmodule

module VCB4CE ( input ce, output wire Q0, 
                input clk, output wire Q1, 
                input clr, output wire Q2, 
     output wire Q3, 
     output wire TC, 
     output wire CEO
); 
wire CEO1, TC1, TC2; 
assign TC = TC1 & TC2; 
VCB2CE DD1 (.ce(ce), .Q0(Q0), 
         .clk(clk), .Q1(Q1), 
   .clr(clr), .TC(TC1), 
    .CEO(CEO1)); 
 
VCB2CE DD2 (.ce(CEO1),  .Q0(Q2), 
         .clk(clk), .Q1(Q3), 
         .clr(clr),  .TC(TC2), 
    .CEO(CEO)); 
endmodule

`define m 4 
module VCBmCE (input ce,  output reg [`m-1:0] Q = 0, 
            input clk,  output wire TC, 
            input clr,  output wire CEO); 
assign TC = (Q==(1<<`m)-1) ;  //Q0 & Q1 &...& Q'm-1 ==1 
assign CEO = ce & TC ;   //Сигнал переноса 
always @ (posedge clk or posedge clr ) begin 
Q <= clr? 0 : ce? Q+1 : Q ; /* Если clr=1, то сброс в 0 независимо от clk, иначе 
если ce=1, то "суммировать", иначе "стоять"*/ 
end  
endmodule

module VCB4RE (input ce,   output reg [`m-1:0] Q = 0, 
            input clk,  output wire TC, 
            input R,  output wire CEO); 
assign TC = (Q==15) ;  //Q0 & Q1 &...& Q'm-1 ==1 
assign CEO = ce & TC ;  //Сигнал переноса 
always @ (posedge clk) begin 
Q  <=  R?  0  :  ce?  Q+1  :  Q  ;  /*  Если  R=1,  то  сброс  в  0,  иначе  если  ce=1,  то 
"суммировать", иначе "стоять"*/ 
end  
endmodule

module VCDRE  ( input clk, output wire TC, 
   input ce, output wire CEO, 
   input R, output reg [3:0] Q=0 ); 
assign TC = (Q==9) ; 
assign CEO = ce & TC ; 
always @ (posedge clk) begin 
Q <= (R | CEO)? 0 : ce? Q+1 : Q ; 
end 
endmodule 

`define m 4 
module VCBDmSE (input ce,  output reg [`m-1:0] Q = (1<<`m)-1, 
                input clk,  output wire TC, 
                input s,    output wire CEO); 
assign TC = (Q==0) ;   //Q0,Q1,...Q'm-1 ==0 
assign CEO = ce & TC ;   //Сигнал переноса 
always @ (posedge clk) begin 
Q  <=  s?    ((1<<`m)-1)  :  ce?  Q-1  :  Q  ;  /*  Если  s=1,  то  запись  2 m-1,  иначе  если 
ce=1, то "вычитать", иначе "стоять"*/ 
end  
endmodule
 
`define m 4 
module VCBmCLED(input ce,  output reg [`m-1:0] Q =0, 
    input up,  output wire CEO, 
    input [`m-1:0] di, output wire TC, 
    input L, 
    input clk, 
    input clr); 
assign TC = up? (Q==(1<<`m)-1) : (Q==0) ; /* если up=1, то TC=1 при Q=2m-1, иначе 
TC=1 при Q=0 */ 
assign CEO = ce & TC ;       
always @ (posedge clr or posedge clk) begin 
if (clr) Q <= 0;  //асинхронный сброс 
else Q <= L? di : (up & ce)? Q+1 : (!up & ce)? Q-1 : Q ;  
end 
endmodule

`define m 4 
module VCJmRE     (input ce, output wire TC, 
   input clk, output wire CEO, 
   input R, output reg[`m-1:0] Q = 0); 
assign TC = (Q==(1<<`m)-1) ;  //q0,q1,...q'm-1 ==1 
assign CEO = ce & TC ; //Сигнал переноса 
always @ (posedge clk) begin 
Q <= R? 0 : ce? Q<<1  |  !Q[`m-1] : Q ; 
end    
endmodule 

module VCGrey4Re ( input clk, output wire [3:0] Y, //Код Грея 
   input ce,  output wire CEO, 
   input r,   output wire TC); 
reg [4:0]q = 0; 
assign TC = (q[4:0]==((1<<4) | 1)) ;     
assign CEO = ce & TC ; 
assign Y = q[4:1] ; 
always @ (posedge clk) begin 
q[0] <= (r | CEO)? 0 : ce? !q[0]: q[0]       ; // Дополнительный триггер 
q[1] <= (r | CEO)? 0 : ((q[0]==0) & ce)? !q[1] : q[1]; 
q[2] <= (r | CEO)? 0 : ((q[1:0]==((1<<1) | 1)) & ce)? !q[2] : q[2] ; 
q[3] <= (r | CEO)? 0 : ((q[2:0]==((1<<2) | 1)) & ce)? !q[3] : q[3] ; 
q[4] <= (r | CEO)? 0 : ((q[3:0]==((1<<3) | 1)) & ce)? !q[4] : q[4] ; 
end 
endmodule 
