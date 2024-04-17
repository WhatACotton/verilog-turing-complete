module NOR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire w_1;
    wire n_out;
    NOT_GATE NOT0(
        .in0    (in0    ),
        .out    (w_0    )
    );
    NOT_GATE NOT1(
        .in0    (in1    ),
        .out    (w_1    )
    );
    NAND_GATE NAND(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (n_out    )
    );
    NOT_GATE NOT(
        .in0    (n_out    ),
        .out    (out    )
    );
endmodule
