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