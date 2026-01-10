module ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] Opcode,
    output reg [7:0] Result,
    output reg Zero,
    output reg Carry
);

always @(*) begin
    Zero = 0;
    Carry = 0;

    case (Opcode)
        3'b000: Result = A + B;                  // ADD
        3'b001: Result = A - B;                  // SUB
        3'b010: Result = A & B;                  // AND
        3'b011: Result = A | B;                  // OR
        3'b100: Result = A ^ B;                  // XOR
        3'b101: Result = (A == B) ? 8'b1 : 8'b0; // EQUAL
        3'b110: Result = (A < B)  ? 8'b1 : 8'b0; // LESS THAN
        default: Result = 8'b0;
    endcase

    if (Result == 8'b0)
        Zero = 1'b1;

    if (Opcode == 3'b000 && (A + B > 4'b1111))
        Carry = 1'b1;
end

endmodule

