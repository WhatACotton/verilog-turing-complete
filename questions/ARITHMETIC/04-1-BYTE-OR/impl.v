module BYTE_OR(
     input wire       clk,
     input wire [7:0] in0,
     input wire [7:0] in1,
     output wire [7:0] out
);
OR_GATE OR_0(
        .in0    (in0[0]    ),
        .in1    (in1[0]    ),
        .out    (out[0]    )
        );
       
OR_GATE OR_1(
        .in0    (in0[1]    ),
        .in1    (in1[1]    ),
        .out    (out[1]    )
        );

OR_GATE OR_2(
        .in0    (in0[2]    ),
        .in1    (in1[2]    ),
        .out    (out[2]    )
        );

OR_GATE OR_3(
        .in0    (in0[3]    ),
        .in1    (in1[3]    ),
        .out    (out[3]    )
        );

OR_GATE OR_4(
        .in0    (in0[4]    ),
        .in1    (in1[4]    ),
        .out    (out[4]    )
        );
        
OR_GATE OR_5(
        .in0    (in0[5]    ),
        .in1    (in1[5]    ),
        .out    (out[5]    )
        );
   
OR_GATE OR_6(
        .in0    (in0[6]    ),
        .in1    (in1[6]    ),
        .out    (out[6]    )
        );

OR_GATE OR_7(
        .in0    (in0[7]    ),
        .in1    (in1[7]    ),
        .out    (out[7]    )
        );
endmodule