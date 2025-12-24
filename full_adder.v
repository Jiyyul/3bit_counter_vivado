module full_adder (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    wire a_n, b_n, cin_n;
    wire axb, axb_n;
    wire w1, w2, w3, w4;
    wire ab, ac, bc;

    // NOT
    Not n1 (.a(a),   .y(a_n));
    Not n2 (.a(b),   .y(b_n));
    Not n3 (.a(cin), .y(cin_n));
    
    // a XOR b
    And a1 (.a(a_n), .b(b),   .y(w1));
    And a2 (.a(a),   .b(b_n), .y(w2));
    Or  o1 (.a(w1),  .b(w2),  .y(axb));
    
    // (a XOR b) XOR cin
    Not n4 (.a(axb), .y(axb_n));
    And a3 (.a(axb),   .b(cin_n), .y(w3));
    And a4 (.a(axb_n), .b(cin),   .y(w4));
    Or  o2 (.a(w3),    .b(w4),    .y(sum));
    
    // carry
    And a5 (.a(a),   .b(b),   .y(ab));
    And a6 (.a(a),   .b(cin), .y(ac));
    And a7 (.a(b),   .b(cin), .y(bc));
    Or  o3 (.a(ab),  .b(ac),  .y(c_tmp));
    Or  o4 (.a(c_tmp), .b(bc), .y(cout));

endmodule