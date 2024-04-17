module BIGGER_AND_GATE(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     output wire       out
);
    wire w_0;
    wire w_1;
    
    AND_GATE AND0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    AND_GATE AND1(
        .in0    (in1    ),
        .in1    (in2    ),
        .out    (w_1    )
    );
    AND_GATE AND2(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

    
endmodule
