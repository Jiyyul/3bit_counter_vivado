module counter_3bit(
    input clk,
    input [1:0] sel,
    output [2:0] Q
);
    wire [2:0] val_to_add;
    wire [2:0] added_val;
    wire [2:0] next_Q;
    wire rst;

    // reset 조건
    assign rst = (sel == 2'b11);

    // 1. MUX
    mux_sel MUX_INST (
        .sel(sel),
        .b(val_to_add)
    );

    // 2. ADDER
    adder_3bit ADD_INST (
        .a(Q),
        .b(val_to_add),
        .sum(added_val)
    );

    // 3. next state
    assign next_Q = (rst) ? 3'b000 : added_val;

    // 4. REGISTER
    register_3bit REG_INST (
        .clk(clk),
        .rst(rst),
        .d(next_Q),
        .q(Q)
    );

endmodule
