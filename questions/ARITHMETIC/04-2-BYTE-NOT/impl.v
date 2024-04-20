module BYTE_NOT(
     input wire [7:0] in0,
     output wire [7:0] out
);
NOT_GATE NOT_0(
        .in0    (in0[0]    ),
        .out    (out[0]    )
        );
NOT_GATE NOT_1(
        .in0    (in0[1]    ),
        .out    (out[1]    )
        );
NOT_GATE NOT_2(
        .in0    (in0[2]    ),
        .out    (out[2]    )
        );
NOT_GATE NOT_3(
        .in0    (in0[3]    ),
        .out    (out[3]    )
        );
NOT_GATE NOT_4(
        .in0    (in0[4]    ),
        .out    (out[4]    )
        );
NOT_GATE NOT_5(
        .in0    (in0[5]    ),
        .out    (out[5]    )
        );
NOT_GATE NOT_6(
        .in0    (in0[6]    ),
        .out    (out[6]    )
        );
NOT_GATE NOT_7(
        .in0    (in0[7]    ),
        .out    (out[7]    )
        );

   
endmodule