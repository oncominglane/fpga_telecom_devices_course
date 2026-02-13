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
