module NOT_GATE(
     input wire       in0,
     output wire       out
);
    NAND_GATE NAND(
        .in0    (in0    ),
        .in1    (in0    ),
        .out    (out    )
    );
endmodule

module NAND_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    assign out = ~ ( in0 & in1 );
endmodule
