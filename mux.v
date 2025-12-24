module mux_sel (
    input  wire [1:0] sel,
    output reg  [2:0] b
);
    always @(*) begin
        case (sel)
            2'b00: b = 3'b001; // +1
            2'b01: b = 3'b010; // +2
            2'b10: b = 3'b111; // -1 (2's complement)
            2'b11: b = 3'b000; // reset
            default: b = 3'b000;
        endcase
    end
endmodule
