module ram #(parameter data_width =8)(
  input clock,
  input reset,
  input we,
  input en,
  input [2:0] addr,
  input [data_width-1:0] di,
  output reg [data_width-1:0] dio
);

reg [data_width-1:0] ram [0:7];
initial begin 
  ram[0] = 0;
  ram[1] = 0;
  ram[2] = 0;
  ram[3] = 0;
  ram[4] = 0;
  ram[5] = 0;
  ram[6] = 0;
  ram[7] = 0;
end

always @ (posedge clock or posedge reset) begin
  if (reset == 1) 
    for(int i=0;i<data_width;i++) ram[i] = 0;
  else begin 
    if (en == 1) begin 
      if (we == 1) begin
        for(int i=0;i<=data_width-2;i++) ram[i+1] = ram[i];
        ram[0] <= di;
        dio <= di;
      end
      else dio <= ram[addr];
    end 
  end 
end
endmodule