`timescale 1ns/1ps
module tb_sequence_controller;
    reg clk,rst_n,start;
    wire busy,done; wire [1:0] data;
    sequence_controller dut(.clk(clk),.rst_n(rst_n),.start(start),.busy(busy),.done(done),.data(data));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sequence_controller.vcd"); $dumpvars(0,tb_sequence_controller);
        clk=0; rst_n=0; start=0; #12; rst_n=1;
        @(negedge clk) start=1;
        @(negedge clk) start=0;
        repeat(6) @(negedge clk);
        rst_n=0; repeat(2) @(negedge clk); rst_n=1;
        repeat(2) @(negedge clk);
        $finish;
    end
endmodule
