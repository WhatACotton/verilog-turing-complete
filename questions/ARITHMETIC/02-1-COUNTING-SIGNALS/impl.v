module  COUNTING_SIGNALS(
     input wire     switch,
     input wire      [0:0]   in0,
     input wire      [0:0]  in1,
     input wire      [0:0] in2,
     input wire      [0:0] in3,
    output wire      [2:0] out
);
    wire o0;
    wire o1;
    wire o2;
    wire is2;
    wire is4;
    wire is0;
    wire isOdd;
    wire isNot0;

    CHECK_IS_2 CHK_IS_2(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .in3    (in3    ),
        .out    (is2    )
    );
    CHECK_IS_4 CHK_IS_4(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .in3    (in3    ),
        .out    (is4    )
    );
    CHECK_IS_0 CHK_IS_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .in3    (in3    ),
        .out    (is0    )
    );
    CHECK_IS_ODD CHK_IS_ODD(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .in3    (in3    ),
        .out    (isOdd    )
    );
    CHECK_IS_NOT_0 CHK_IS_NOT_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .in3    (in3    ),
        .out    (isNot0    )
    );

    //is 2
    wire w_2_0;
    wire w_2_1;
    wire w_2_2;
    wire w_2_3;

    wire isNotOdd;
    wire isNot4;
    
    NOT_GATE NOT_ODD(
        .in0    (isOdd    ),
        .out    (isNotOdd    )
    );
    NOT_GATE NOT_4(
        .in0    (is4    ),
        .out    (isNot4    )
    );

    BIGGER_AND_GATE AND_1_0(
        .in0    (isNot4    ),
        .in1    (isNotOdd   ),
        .in2    (isNot0    ),
        .out    (w_2_0    )
    );
    AND_GATE AND_1_1(
        .in0    (isNot4    ),
        .in1    (is2    ),
        .out    (w_2_1    )
    );

    OR_GATE OR_1(
        .in0    (w_2_0    ),
        .in1    (w_2_1    ),
        .out    (out[1]    )
    );
    

    CRUDE_AWAKENING CRUDE_AWAKENING_0(
        .in0    (is4    ),
        .out    (out[2]    )
    );
    CRUDE_AWAKENING CRUDE_AWAKENING_1(
        .in0    (isOdd    ),
        .out    (out[0]    )
    );
   always @(posedge switch) begin 
      
         $display("out = %h", out);
    end

endmodule

module CHECK_IS_ODD(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     input wire       in3,
     output wire      out
);
    XNOR_GATE XNOR_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    XNOR_GATE XNOR_1(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_1    )
    );

    XOR_GATE XOR(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

endmodule

module CHECK_IS_4(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     input wire       in3,
     output wire       out
);
    wire w_0;
    wire w_1;

    wire w_0_0;
    wire w_0_1;
    AND_GATE AND_0_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );
    AND_GATE AND_0_1(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_1    )
    );

    AND_GATE AND_1_0(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

endmodule

module CHECK_IS_2(
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

    wire w_0_0;
    wire w_0_1;
    AND_GATE AND_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );
    AND_GATE AND_1(
        .in0    (in0    ),
        .in1    (in2    ),
        .out    (w_1    )
    );  
    AND_GATE AND_2(
        .in0    (in0    ),
        .in1    (in3    ),
        .out    (w_2    )
    );  
    AND_GATE AND_3(
        .in0    (in1    ),
        .in1    (in2    ),
        .out    (w_3    )
    );
    AND_GATE AND_4(
        .in0    (in1    ),
        .in1    (in3    ),
        .out    (w_4    )
    );  
    AND_GATE AND_5(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_5    )
    );

    BIGGER_OR_GATE BIGOR_0(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .in2    (w_2    ),
        .out    (w_0_0    )
    );

    BIGGER_OR_GATE BIGOR_1(
        .in0    (w_3    ),
        .in1    (w_4    ),
        .in2    (w_5    ),
        .out    (w_0_1    )
    );

    OR_GATE OR_1(
        .in0    (w_0_0    ),
        .in1    (w_0_1    ),
        .out    (out    )
    );

endmodule

module CHECK_IS_0(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     input wire       in3,
     output wire       out
);
    wire w_0;
    wire w_1;

    wire w_0_0;
    wire w_0_1;
    OR_GATE OR_0_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );
    OR_GATE OR_0_1(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_1    )
    );

    OR_GATE OR_1_0(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

endmodule


module CHECK_IS_NOT_0(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     input wire       in3,
     output wire       out
);
    wire w_0;
    wire w_1;

    wire w_0_0;
    wire w_0_1;
    OR_GATE OR_0_0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );
    OR_GATE OR_0_1(
        .in0    (in2    ),
        .in1    (in3    ),
        .out    (w_1    )
    );

    OR_GATE OR_1_0(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

endmodule
