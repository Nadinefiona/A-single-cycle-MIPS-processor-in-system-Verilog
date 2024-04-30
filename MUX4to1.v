module MUX4to1 (
    input [31:0] data0,
    input [31:0] data1,
    input [31:0] data2,
    input [31:0] data3,
    input [1:0] sel,
    output reg [31:0] output_reg 
);

    always @*
    begin
        case (sel)
            2'b00: output_reg = data0;
            2'b01: output_reg = data1;
            2'b10: output_reg = data2;
            2'b11: output_reg = data3;
            default: output_reg = 32'h00000000;
        endcase;
    end

endmodule
