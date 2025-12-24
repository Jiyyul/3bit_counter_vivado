`timescale 1ns / 1ps


module Or(
    input wire a,
    input wire b,
    output wire y
    );
    assign y = a|b;
endmodule
