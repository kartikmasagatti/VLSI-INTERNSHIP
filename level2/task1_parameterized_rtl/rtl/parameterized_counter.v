module parameterized_counter #(
    parameter WIDTH = 8,
    parameter [WIDTH-1:0] RESET_VALUE = {WIDTH{1'b0}}
)(
    input wire clk, rst_n, en,
    output reg [WIDTH-1:0] count
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= RESET_VALUE;
        else if (en)
            count <= count + {{(WIDTH-1){1'b0}}, 1'b1};
    end
endmodule
