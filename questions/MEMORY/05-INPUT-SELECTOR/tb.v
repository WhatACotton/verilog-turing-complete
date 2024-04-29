module MUX_tb;
    reg clk = 1'b0;
    reg       swc = 1'b0;
    reg    [7:0]    in0 = 8'h00;
    reg    [7:0]    in1 = 8'h00;
    wire   [7:0]    out;
    
initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    always #1 begin
        clk <= ~clk;
    end

    MUX DUT(
        .clk    (clk    ),
        .swc    (swc    ),
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (out    )
    );
    
    initial begin
        #2
        in0 = 8'h01;
        in1 = 8'h01;
        #2
        in0 = 8'h01;
        in1 = 8'h02;
        #2
        swc = 1'b1;
        in0 = 8'h05;
        in1 = 8'h10;
        #2
        in0 = 8'h10;
        in1 = 8'h08;
        #2
        swc = 1'b0;
        in0 = 8'hff;
        in1 = 8'hf0;
        #2
        $finish;
    end
endmodule