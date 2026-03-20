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