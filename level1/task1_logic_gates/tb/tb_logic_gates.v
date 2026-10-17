`timescale 1ns/1ps
module tb_logic_gates;
    reg a, b, sel;
    wire y_and, y_or, y_xor, y_nand, y_mux;
    integer i;

    logic_gates dut(.a(a), .b(b), .y_and(y_and), .y_or(y_or),
                    .y_xor(y_xor), .y_nand(y_nand));
    mux2to1 mux_dut(.a(a), .b(b), .sel(sel), .y(y_mux));

    initial begin
        $dumpfile("task1_logic_gates.vcd");
        $dumpvars(0, tb_logic_gates);
        $display("time a b sel | AND OR XOR NAND MUX");
        for (i = 0; i < 8; i = i + 1) begin
            {a,b,sel} = i[2:0];
            #10;
            $display("%0t  %b %b  %b  |  %b   %b   %b   %b   %b",
                     $time,a,b,sel,y_and,y_or,y_xor,y_nand,y_mux);
        end
        $finish;
    end
endmodule
