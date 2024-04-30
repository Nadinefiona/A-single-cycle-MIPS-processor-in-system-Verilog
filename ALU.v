module ALU #(parameter DATA_WIDTH = 32) (
    input [DATA_WIDTH-1:0] operandA,
    input [DATA_WIDTH-1:0] operandB,
    input [2:0] aluOp,
    output reg [DATA_WIDTH-1:0] result,
    output reg zeroFlag,
    output reg overflowFlag
);
    always @(*) begin
        case (aluOp)
            3'b000: result = operandA + operandB; // Addition
            3'b001: result = operandA - operandB; // Subtraction
            3'b010: result = operandA & operandB; // Bitwise AND
            3'b011: result = operandA | operandB; // Bitwise OR
            3'b100: result = operandA ^ operandB; // Bitwise XOR
            default: result = 0;
        endcase
        zeroFlag = (result == 0);
        overflowFlag = 0; // Placeholder, adjust based on your logic
    end
endmodule
