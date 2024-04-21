module SIGNED_NEGATOR(
     input wire [7:0] in0,
     output wire [7:0] out
);
wire  [7:0] w_0;
wire w_1;
BYTE_NOT NOT_0(
        .in0    (in0    ),
        .out    (w_0    )
        );
ADDING_BYTES ADDER_0(
        .i    (1'b0    ),
        .in0    (w_0    ),
        .in1    (8'b00000001    ),
        .out    (out    ),
        .cout    (w_1)
        );

   
endmodule