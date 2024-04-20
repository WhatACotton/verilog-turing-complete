module DOUBLE_THE_NUMBER_tb;
    reg             clk = 1'b0;
    reg    [7:0]    in0 = 8'h00;
    wire   [7:0]    out;
    
initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    

    DOUBLE_THE_NUMBER DUT(
        .clk    (clk    ),
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