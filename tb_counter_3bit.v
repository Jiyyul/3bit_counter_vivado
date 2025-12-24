`timescale 1ns/1ps

module tb_counter_3bit;

    reg clk;
    reg [1:0] sel;
    wire [2:0] Q;

    // DUT (Device Under Test)
    counter_3bit DUT (
        .clk(clk),
        .sel(sel),
        .Q(Q)
    );

    // clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // 초기값
        clk = 0;
        sel = 2'b11;   // reset
        #20;

        // Case 00 : +1
        sel = 2'b00;
        #80;

        // Case 01 : +2
        sel = 2'b01;
        #80;

        // Case 10 : -1
        sel = 2'b10;
        #80;

        // Case 11 : reset
        sel = 2'b11;
        #20;

        $stop;
    end

endmodule
