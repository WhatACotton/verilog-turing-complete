module ODD_TICKS(
     output wire       out
);

NOT_GATE NOT_GATE_0(
    .in0(out),
    .out(w_0)
);
DELAY DELAY_0(
    .in0(w_0),
    .out(out)
);

endmodule
