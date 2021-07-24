module full_adder ( 
  input a,
  input b,
  input cin,
  output reg sum,
  output reg carry
);

always @(a,b,cin) 
    {carry,sum} = a + b + cin ;
  endmodule
