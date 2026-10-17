module edge_counter(
    input wire clk, rst_n, pulse,
    output reg [3:0] count
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 4'd0;
        else if (pulse)
            count <= count + 1'b1;
    end
endmodule
