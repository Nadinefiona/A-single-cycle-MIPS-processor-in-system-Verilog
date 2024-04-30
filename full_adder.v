module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    // Logic for full adder
    assign {cout, sum} = a + b + cin;

endmodule
