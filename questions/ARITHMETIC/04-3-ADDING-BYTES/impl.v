module ADDING_BYTES(
        input wire i,
     input wire [7:0] in0,
     input wire [7:0] in1,
     output wire [7:0] out,
     output wire cout
);
wire c_0;
wire c_1;
wire c_2;
wire c_3;
wire c_4;
wire c_5;
wire c_6;
FULL_ADDER ADDER_0(
        .in0    (i    ),
        .in1    (in0[0]    ),
        .in2    (in1[0]       ),
        .out    (out[0]    ),
        .cout    (c_0    )
        );
FULL_ADDER ADDER_1(
        .in0    (c_0    ),
        .in1    (in0[1]    ),
        .in2    (in1[1]       ),
        .out    (out[1]    ),
        .cout    (c_1    )
        );
FULL_ADDER ADDER_2(
        .in0    (c_1    ),
        .in1    (in0[2]    ),
        .in2    (in1[2]       ),
        .out    (out[2]    ),
        .cout    (c_2    )
        );
FULL_ADDER ADDER_3(
        .in0    (c_2    ),
        .in1    (in0[3]    ),
        .in2    (in1[3]       ),
        .out    (out[3]    ),
        .cout    (c_3    )
        );
FULL_ADDER ADDER_4(
        .in0    (c_3    ),
        .in1    (in0[4]    ),
        .in2    (in1[4]       ),
        .out    (out[4]    ),
        .cout    (c_4    )
        );
FULL_ADDER ADDER_5(
        .in0    (c_4    ),
        .in1    (in0[5]    ),
        .in2    (in1[5]       ),
        .out    (out[5]    ),
        .cout    (c_5    )
        );
FULL_ADDER ADDER_6(
        .in0    (c_5    ),
        .in1    (in0[6]    ),
        .in2    (in1[6]       ),
        .out    (out[6]    ),
        .cout    (c_6    )
        );
FULL_ADDER ADDER_7(
        .in0    (c_6    ),
        .in1    (in0[7]    ),
        .in2    (in1[7]       ),
        .out    (out[7]    ),
        .cout    (cout    )
        );

endmodule