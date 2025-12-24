module register_3bit (
    input  wire       clk,
    input  wire       rst,   
    input  wire [2:0] d,
    output wire [2:0] q
);

    dff_gate dff2 (.clk(clk), .rst(rst), .d(d[2]), .q(q[2]));
    dff_gate dff1 (.clk(clk), .rst(rst), .d(d[1]), .q(q[1]));
    dff_gate dff0 (.clk(clk), .rst(rst), .d(d[0]), .q(q[0]));

endmodule
