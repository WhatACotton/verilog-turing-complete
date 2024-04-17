module BIGGER_OR_GATE(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     output wire       out
);
    wire w_0;
    wire w_1;
    
    OR_GATE OR0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    OR_GATE OR1(
        .in0    (in1    ),
        .in1    (in2    ),
        .out    (w_1    )
    );
    OR_GATE OR2(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

    
endmodule
