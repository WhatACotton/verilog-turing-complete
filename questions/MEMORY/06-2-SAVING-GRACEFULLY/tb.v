
module MEMORY_tb;

    reg save = 1'b0;
    reg value = 1'b0;
    reg clk = 1'b1;
    reg rst = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    always #1 begin
        clk <= ~clk;
    end
    MEMORY DUT(
        .clk (clk),
        .rst(rst   ),
        .save    (save    ),
        .value    (value    ),
        .out    (out    )
    );

    initial begin
        save = 1'b1;
        value = 1'b1;
        #4
        value = 1'b0;
        #4
        save = 1'b0;
        #2
        save = 1'b0;
        #2
        value = 1'b1;
        #2
        save = 1'b1;
        value = 1'b0;
        #2
        value = 1'b1;
        #4
        save = 1'b0;
        #2
        value = 1'b0;
        #2
        save = 1'b1;
        #4
        $finish;
    end

endmodule