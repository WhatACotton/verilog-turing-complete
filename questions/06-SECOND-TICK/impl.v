module SECOND_TICK(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire n_out;
    NOT_GATE NOT(
        .in0    (in1    ),
        .out    (w_0    )
    );
    AND_GATE AND(
        .in0    (w_0    ),
        .in1    (in0    ),
        .out    (out    )
    );
endmodule
