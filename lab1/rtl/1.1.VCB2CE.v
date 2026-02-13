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
