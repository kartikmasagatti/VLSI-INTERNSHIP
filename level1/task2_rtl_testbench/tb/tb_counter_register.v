`timescale 1ns/1ps
module tb_counter_register;
    reg clk, rst_n, en;
    reg [3:0] data_in;
    wire [3:0] count, data_out;

    counter_register #(.WIDTH(4)) dut(
        .clk(clk), .rst_n(rst_n), .en(en), .data_in(data_in),
        .count(count), .data_out(data_out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("task2_counter_register.vcd");
        $dumpvars(0, tb_counter_register);
        clk = 0; rst_n = 0; en = 0; data_in = 4'h0;
        #12; rst_n = 1;
        @(negedge clk); en = 1; data_in = 4'h3;
        @(negedge clk); data_in = 4'h7;
        @(negedge clk); en = 0; data_in = 4'hA;
        @(negedge clk); en = 1; data_in = 4'hF;
        @(negedge clk); data_in = 4'h1;
        @(negedge clk); rst_n = 0;
        @(negedge clk); rst_n = 1; en = 1; data_in = 4'h5;
        repeat (3) @(negedge clk);
        $finish;
    end
endmodule
