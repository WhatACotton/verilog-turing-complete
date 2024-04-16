module adder8_tb;
    reg        clk = 1'b0;
    reg        in0 = 1'b0;
    reg        in1 = 1'b0;
    reg        cin = 1'b0;
    wire       out = 1'b0;
    wire       c_out= 1'b0;
    
    initial begin
        $dumpfile("wave2.vcd");
        $dumpvars(0, HLF);
    end
    
    always #1 begin
        clk <= ~clk;
    end
    
    full_adder HLF(
        .clk    (clk    ),
        .cin    (cin   ),
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (out    ),
        .c_out  (c_out    )
    );
    
    initial begin
        in0 = 1'b1;
        in1 = 1'b0;
        cin = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        cin = 1'b0;        
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        cin = 1'b0;
        #2
        $finish;
    end
endmodule