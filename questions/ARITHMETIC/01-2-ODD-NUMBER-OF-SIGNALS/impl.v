module  ODD_NUMBER_OF_SIGNALS(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     input wire       in3,
     output wire       out
);
   
    wire w_out0;
    wire w_out1;
    
    XNOR_GATE XNOR0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_out0    )
    );
    XNOR_GATE XNOR1(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_out1    )
    );

    XOR_GATE XOR0(
        .in0    (w_out0    ),
        .in1    (w_out1    ),
        .out    (out    )
    );
    
endmodule
