`timescale 1ns/1ps
module tb_parameterized_counter;
    reg clk, rst_n, en;
    wire [3:0] count4;
    wire [7:0] count8;
    parameterized_counter #(.WIDTH(4), .RESET_VALUE(4'd0)) c4
        (.clk(clk), .rst_n(rst_n), .en(en), .count(count4));
    parameterized_counter #(.WIDTH(8), .RESET_VALUE(8'd10)) c8
        (.clk(clk), .rst_n(rst_n), .en(en), .count(count8));
    always #5 clk=~clk;
    initial begin
        $dumpfile("parameterized_counter.vcd"); $dumpvars(0,tb_parameterized_counter);
        clk=0; rst_n=0; en=0; #12; rst_n=1; en=1;
        repeat(18) @(negedge clk);
        en=0; repeat(2) @(negedge clk);
        $finish;
    end
endmodule
