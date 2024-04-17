module XOR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire w_1;
    
    NOR_GATE NOR0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    AND_GATE AND(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_1    )
    );
    NOR_GATE NOR1(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

    
endmodule
