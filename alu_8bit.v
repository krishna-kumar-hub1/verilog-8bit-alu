// Code your design here

module alu_8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] ALU_Sel,
    output reg [7:0] Result,
    output reg Carry,
  output reg borrow,
    output Zero
);

always @(*) begin
    Result = 8'b00000000;
    Carry  = 1'b0;
    borrow = 1'b0;
  	Zero=1'b0;

    case (ALU_Sel)

        3'b000: begin
            {Carry, Result} = {1'b0, A} + {1'b0, B};
        end

        3'b001: begin
          Result=A-B;
          borrow=(A<B);
          Zero=(A=B);
            
        end

        3'b010: begin
            Result = A & B;
        end

        3'b011: begin
            Result = A | B;
        end

        3'b100: begin
            Result = A ^ B;
        end

        3'b101: begin
            Result = ~A;
        end

        3'b110: begin
            Result = A << 1;
        end

        3'b111: begin
            Result = A >> 1;
        end

        default: begin
            Result = 8'b00000000;
            Carry  = 1'b0;
        end

    endcase
end

assign Zero = (Result == 8'b00000000);

endmodule
