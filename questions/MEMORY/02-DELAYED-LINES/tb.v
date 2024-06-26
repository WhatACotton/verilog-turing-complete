
module DELAY_tb;
    reg clk = 1'b0;
    reg in0 = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    wire out;
    always #1 begin
        clk <= ~clk;
    end
   
    DELAY_LINES DUT(
        .clk (clk),
        .in0    (in0    ),
        .out    (out    )
    );

    initial begin
        in0 = 1'b0;
        #2
        in0 = 1'b1;
        #2
       
        #3       
       in0 = 1'b0;
        #3       
       
        #2
        $finish;
    end

endmodule
