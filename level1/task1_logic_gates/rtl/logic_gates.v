module logic_gates(
    input wire a, b,
    output wire y_and, y_or, y_xor, y_nand
);
    assign y_and  = a & b;
    assign y_or   = a | b;
    assign y_xor  = a ^ b;
    assign y_nand = ~(a & b);
endmodule

module mux2to1(
    input wire a, b, sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule
