module ONE_BIT_DECODER(
     input wire       in0,
     output wire       out0,
    output wire       out1
);
 assign out1 = in0;
 NOT_GATE NOT(
         .in0    (in0    ),
         .out    (out0    )
     );
endmodule
