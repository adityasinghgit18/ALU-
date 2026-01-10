`timescale 1ns / 1ps

module alu_tb;

    reg [3:0] A, B;
    reg [2:0] Opcode;
    wire [7:0] Result;
    wire Zero;
    wire Carry;

    // Instantiate ALU
    ALU uut (
        .A(A),
        .B(B),
        .Opcode(Opcode),
        .Result(Result),
        .Zero(Zero),
        .Carry(Carry)
    );

    initial begin
        
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);

        // ADD
        A = 4'b0011; B = 4'b0010; Opcode = 3'b000; #10;
        // SUB
        A = 4'b0101; B = 4'b0011; Opcode = 3'b001; #10;
        // AND
        A = 4'b1100; B = 4'b1010; Opcode = 3'b010; #10;
        // OR
        A = 4'b1100; B = 4'b1010; Opcode = 3'b011; #10;
        // XOR
        A = 4'b1100; B = 4'b1010; Opcode = 3'b100; #10;
        // EQUAL
        A = 4'b0101; B = 4'b0101; Opcode = 3'b101; #10;
        // LESS THAN
        A = 4'b0010; B = 4'b0100; Opcode = 3'b110; #10;
        // ZERO FLAG CHECK
        A = 4'b0000; B = 4'b0000; Opcode = 3'b000; #10;

        $finish;
    end

endmodule

