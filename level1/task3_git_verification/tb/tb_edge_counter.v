`timescale 1ns/1ps
module tb_edge_counter;
    reg clk, rst_n, pulse;
    wire [3:0] count;
    edge_counter dut(.clk(clk), .rst_n(rst_n), .pulse(pulse), .count(count));
    always #5 clk = ~clk;
    initial begin
        $dumpfile("task3_edge_counter.vcd"); $dumpvars(0, tb_edge_counter);
        clk=0; rst_n=0; pulse=0;
        #12 rst_n=1;
        @(negedge clk) pulse=1;
        repeat(4) @(negedge clk);
        pulse=0;
        repeat(2) @(negedge clk);
        pulse=1;
        repeat(2) @(negedge clk);
        rst_n=0;
        @(negedge clk) rst_n=1; pulse=0;
        repeat(2) @(negedge clk);
        $finish;
    end
endmodule
