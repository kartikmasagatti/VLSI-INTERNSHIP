`timescale 1ns/1ps
module tb_alu4;
    reg [3:0] a,b; reg [1:0] op;
    wire [3:0] y; wire carry;
    alu4 dut(.a(a),.b(b),.op(op),.y(y),.carry(carry));
    integer i;
    initial begin
        $dumpfile("alu4.vcd"); $dumpvars(0,tb_alu4);
        a=4'd9; b=4'd6;
        for(i=0;i<4;i=i+1) begin op=i[1:0]; #10; $display("op=%b a=%h b=%h y=%h carry=%b",op,a,b,y,carry); end
        a=4'hF; b=4'h1; op=0; #10;
        $finish;
    end
endmodule
