module DELAY(
     input wire       in0,
     output reg       out = 1'b0
);
always @(in0) begin
    #1
  out = in0;
end
endmodule

module DELAY_LINES (
     input wire       in0,
     output wire       out
);
DELAY DELAY_0(
    .in0(in0),
    .out( w_0)
);
DELAY DELAY_1(
    .in0(w_0),
    .out(out)
);

endmodule
