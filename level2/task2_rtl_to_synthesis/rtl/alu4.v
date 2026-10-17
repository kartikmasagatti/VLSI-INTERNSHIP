module alu4(
    input wire [3:0] a, b,
    input wire [1:0] op,
    output reg [3:0] y,
    output reg carry
);
    always @* begin
        carry = 1'b0;
        case (op)
            2'b00: begin {carry,y} = {1'b0,a} + {1'b0,b}; end
            2'b01: begin y = a - b; carry = (a >= b); end
            2'b10: begin y = a & b; end
            2'b11: begin y = a ^ b; end
            default: begin y = 4'b0; carry = 1'b0; end
        endcase
    end
endmodule
