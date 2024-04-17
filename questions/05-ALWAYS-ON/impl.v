module ALWAYS_ON_GATE(
     input wire       in0,
     output wire       out
);
    wire w_1;
    NOT_GATE NOT(
        .in0    (in0    ),
        .out    (w_1    )
    );
    OR_GATE OR(
        .in0    (in0    ),
        .in1    (w_1    ),
        .out    (out    )
    );
endmodule
