module BUS_tb;
    reg clk = 1'b0;
    reg from = 1'b0;
    reg to = 1'b0;
    reg    [7:0]    in0 = 8'h00;
    reg    [7:0]    in1 = 8'h00;
    wire   [7:0]    out;
    wire out0 = 8'h00;
    wire out1 = 8'h00;
    
initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    
   always #1 begin
        clk <= ~clk;
    end
    BUS DUT(
        .clk    (clk    ),
        .from    (from    ),
        .to    (to    ),
        .in0    (in0    ),
        .in1    (in1    ),
        .out1    (out1    ),
        .out0    (out0    )
    );
    
    initial begin
        #2
        in0 = 8'ha1;
        in1 = 8'h02;
        #2
        from = 1'b1;
        #2
        from = 1'b0;
        #2
      to = 1'b1;
        #2
       to = 1'b0;
        #2
        $finish;
    end
endmodule