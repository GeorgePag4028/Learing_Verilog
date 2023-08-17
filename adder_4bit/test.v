module Adder4Bit (
    input clock,
    input [3:0] A,
    input [3:0] B,
    input cin,
    output reg [3:0] Sum,
    output reg cout
);
    wire [4:0] sum_temp;

    assign sum_temp = A + B + {"000",cin};
    always@(posedge clock) begin
        assign Sum = sum_temp[3:0];
        assign cout = sum_temp[4];
    end 

endmodule
