module sequence_controller(
    input wire clk, rst_n, start,
    output reg busy,
    output reg done,
    output reg [1:0] data
);
    localparam IDLE=2'd0, LOAD=2'd1, STEP=2'd2, FINISH=2'd3;
    reg [1:0] state, next_state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= IDLE;
        else state <= next_state;
    end

    always @* begin
        next_state = state;
        case(state)
            IDLE:   if(start) next_state=LOAD;
            LOAD:   next_state=STEP;
            STEP:   next_state=FINISH;
            FINISH: next_state=IDLE;
            default: next_state=IDLE;
        endcase
    end

    always @* begin
        busy=1'b0; done=1'b0; data=2'b00;
        case(state)
            IDLE:   begin busy=1'b0; data=2'b00; end
            LOAD:   begin busy=1'b1; data=2'b01; end
            STEP:   begin busy=1'b1; data=2'b10; end
            FINISH: begin busy=1'b0; done=1'b1; data=2'b11; end
            default: begin busy=1'b0; done=1'b0; data=2'b00; end
        endcase
    end
endmodule
