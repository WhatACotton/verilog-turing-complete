module DELAY(
    input wire clk,
     input wire       in0,
     output reg       out
);
reg w_0 = 1'b0;
reg w_1 = 1'b0;
reg w_2 = 1'b0;
always @(posedge clk) begin
    if(w_0 > 1'b0)begin
        assign w_0 = 1'b0;
        assign w_1 = in0;
        assign out = w_2;
    end else begin
        assign w_0 = 1'b1;
        assign w_2 = in0;
        assign out = w_1;
    end
end
endmodule

module DELAY_LINES (
    input wire clk,
     input wire       in0,
     output wire       out
);
DELAY DELAY_0(
    .clk(clk),
    .in0(in0),
    .out(w_0)
);
DELAY DELAY_1(
    .clk(clk),
    .in0(w_0),
    .out(out)
);

endmodule
