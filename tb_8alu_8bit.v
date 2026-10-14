module tb_alu_8bit;

reg [7:0] A, B;
reg [2:0] ALU_Sel;
wire [7:0] Result;
wire Carry, Zero, borrow;

alu_8bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .Carry(Carry),
  .Zero(Zero),
  .borrow(borrow)
);

initial begin
    A = 8'd5;
    B = 8'd12;

    ALU_Sel = 3'b000; #10;
    $display("ADD: Result=%d Carry=%b Zero=%b",
             Result, Carry, Zero);

    ALU_Sel = 3'b001; #10;
  $display("SUB: Result=%d Zero=%b borrow=%b", Result, Zero, borrow);

    ALU_Sel = 3'b010; #10;
    $display("AND: Result=%d", Result);

    ALU_Sel = 3'b011; #10;
    $display("OR: Result=%d", Result);

    ALU_Sel = 3'b100; #10;
    $display("XOR: Result=%d", Result);

    ALU_Sel = 3'b101; #10;
    $display("NOT: Result=%d", Result);

    ALU_Sel = 3'b110; #10;
    $display("LEFT SHIFT: Result=%d", Result);

    ALU_Sel = 3'b111; #10;
    $display("RIGHT SHIFT: Result=%d", Result);

    $finish;
end

endmodule
