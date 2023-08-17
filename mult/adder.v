module adder(
  input a, 
  input b, 
  input cin, 
  output reg carry, 
  output reg sum 
);
reg [1:0] s1;
always@(a,b,cin) begin 
  s1 = {1'b0,a} + {1'b0,b} + {1'b0,cin};
end
assign carry = s1[1];
assign sum   = s1[0];
endmodule