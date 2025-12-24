module adder_3bit (
    input  wire [2:0] a,   // 현재 값 Q
    input  wire [2:0] b,   // mux에서 온 값
    output wire [2:0] sum  // Q + b
);
    wire c1, c2;

    full_adder fa0 (
        .a(a[0]),
        .b(b[0]),
        .cin(1'b0),
        .sum(sum[0]),
        .cout(c1)
    );
    full_adder fa1 (
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(sum[1]),
        .cout(c2)
    );
    full_adder fa2 (
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(sum[2]),
        .cout()
    );
endmodule
