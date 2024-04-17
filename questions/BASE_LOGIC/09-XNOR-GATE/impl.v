module XNOR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire n_out;
    XOR_GATE XOR(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (n_out    )
    );
    NOT_GATE NOT(
        .in0    (n_out    ),
        .out    (out    )
    );
endmodule
