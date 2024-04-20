module BYTE_NOT_tb;
    reg    [7:0]    in0 = 8'h00;
    wire   [7:0]    out;
    
initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    

    BYTE_NOT DUT(
        .in0    (in0    ),
        .out    (out    )
    );
    
    initial begin
        #2
        in0 = 8'h01;
        #2
        in0 = 8'h05;
        #2
        in0 = 8'hff;
        #2
        $finish;
    end
endmodule