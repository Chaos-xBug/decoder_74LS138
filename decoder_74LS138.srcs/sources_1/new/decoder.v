`timescale 1ns / 1ps
module decoder(G1, G2A, G2B, A, Y);
    input G1, G2A, G2B;
    input [2:0]A;
    output reg [7:0]Y;

    always @(G1, G2A, G2B, A) begin
        if({G1, G2A, G2B} == 3'b100)
            begin
                case(A)
                    3'b000: Y=8'b1111_1110;
		            3'b001: Y=8'b1111_1101;
		            3'b010: Y=8'b1111_1011;
		            3'b011: Y=8'b1111_0111;
		            3'b100: Y=8'b1110_1111;
		            3'b101: Y=8'b1101_1111;
		            3'b110: Y=8'b1011_1111;
		            3'b111: Y=8'b0111_1111;
		            default:Y=8'b1111_1111;
                endcase
            end
        else Y=8'b1111_1111;
    end
endmodule
