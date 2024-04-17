module  DOUBLE_TROUBLE(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     input wire       in3,
     output wire       out
);
    wire w_0;
    wire w_1;
    wire w_2;
    wire w_3;
    wire w_4;
    wire w_5;
    wire w_out0;
    wire w_out1;
    
    AND_GATE AND0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    AND_GATE AND1(
        .in0    (in0    ),
        .in1    (in2    ),
        .out    (w_1    )
    );
    AND_GATE AND2(
        .in0    (in0    ),
        .in1    (in3    ),
        .out    (w_2    )
    );
    AND_GATE AND3(
        .in0    (in1    ),
        .in1    (in2    ),
        .out    (w_3    )
    );

    AND_GATE AND4(
        .in0    (in1    ),
        .in1    (in3    ),
        .out    (w_4    )
    );
    AND_GATE AND5(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_5    )
    );
    BIGGER_OR_GATE BIGOR0(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .in2    (w_2    ),
        .out    (w_out0    )
    );
    BIGGER_OR_GATE BIGOR1(
        .in0    (w_3    ),
        .in1    (w_4    ),
        .in2    (w_5    ),
        .out    (w_out1    )
    );
    OR_GATE OR0(
        .in0    (w_out0    ),
        .in1    (w_out1    ),
        .out    (out    )
    );
    
endmodule
