module fullAdder (
    input [31:0] operand1,
    input [31:0] operand2,
    input cin, // Carry-in
    output [31:0] sum,
    output cout // Carry-out
);

    // Internal wires for the carry chain
    wire [31:0] carry;

    // Instantiate full_adder modules in a generate block
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : carry_generator
            full_adder fa (
                .a(operand1[i]),
                .b(operand2[i]),
                .cin(i == 0 ? cin : carry[i-1]),
                .sum(sum[i]),
                .cout(carry[i])
            );
        end
    endgenerate

    // Output carry-out
    assign cout = carry[31];

endmodule


