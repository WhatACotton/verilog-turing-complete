module BUS_tb;
    reg from = 1'b0;
    reg to = 1'b0;
    reg    [7:0]    in0 = 8'h00;
    reg    [7:0]    in1 = 8'h00;
    wire   [7:0]    out;
    
initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    

    BUS DUT(
        .from    (from    ),
        .to    (to    ),
        .in0    (in0    ),
        .in1    (in1    ),
        .out1    (out1    ),
        .out0    (out0    )
    );
    
    initial begin
        #2
        in0 = 8'h01;
        in1 = 8'h01;
        #2
        in0 = 8'h01;
        in1 = 8'h02;
        #2
        in0 = 8'h05;
        in1 = 8'h10;
        #2
        in0 = 8'h10;
        in1 = 8'h08;
        #2
        in0 = 8'hff;
        in1 = 8'hf0;
        #2
        $finish;
    end
endmodule