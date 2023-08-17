// This is test for verilog 
 module adder_4bit 
 (
  input [3:0] a , 
  input [3:0] b, 
  input c ,
  output reg cout ,
  output reg [3:0] sum
 ) ;

 always @ (a , b) begin 
   {cout,sum} = a + b;
end 
endmodule
