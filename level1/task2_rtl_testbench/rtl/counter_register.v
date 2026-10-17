module counter_register #(
    parameter WIDTH = 4
)(
    input wire clk,
    input wire rst_n,
    input wire en,
    input wire [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] count,
    output reg [WIDTH-1:0] data_out
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count   <= {WIDTH{1'b0}};
            data_out <= {WIDTH{1'b0}};
        end else if (en) begin
            count   <= count + 1'b1;
            data_out <= data_in;
        end
    end
endmodule
