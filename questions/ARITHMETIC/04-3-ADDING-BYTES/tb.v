module ADDING_BYTES_tb;
    reg  i = 1'b0 ;
    reg    [7:0]    in0 = 8'h0;
    reg    [7:0]    in1 = 8'h0;
    wire   [7:0]    out;
    
initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    

    ADDING_BYTES DUT(
        .i (i),
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (out    ),
        .cout (cout   )
    );
    
    initial begin
        #2
        i = 1'b0;
        in0 = 8'h01;
        in1 = 8'h01;
        #2
        i = 1'b0;
        in0 = 8'h01;
        in1 = 8'h02;
        #2
        i = 1'b0;
        in0 = 8'h05;
        in1 = 8'h10;
        #2
        i = 1'b0;
        in0 = 8'h08;
        in1 = 8'h08;
        #2
        i = 1'b0;
        in0 = 8'hff;
        in1 = 8'hff;
        #2
        i = 1'b1;
        in0 = 8'hff;
        in1 = 8'h00;
        #2
        $finish;
    end
endmodule