module rom #(parameter coeff_width =8)(
  input clock,
  input en,
  input [2:0] addr,
  output reg [coeff_width-1:0] rom_out
);

reg [coeff_width-1:0] rom [0:7] ; 
reg [coeff_width-1:0] rdata;
initial begin
  rom[0] = 8'b00001000; 
  rom[1] = 8'b00000111;
  rom[2] = 8'b00000110; 
  rom[3] = 8'b00000101; 
  rom[4] = 8'b00000100; 
  rom[5] = 8'b00000011; 
  rom[6] = 8'b00000010;
  rom[7] = 8'b00000001;
end
assign rdata = rom[addr];
always@(posedge clock) begin 
  if (en == 1) rom_out <= rdata;
end 
endmodule