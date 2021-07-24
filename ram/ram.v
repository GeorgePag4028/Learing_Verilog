module ram #(parameter data_width =8)

  (
    input clock,
    input reset,
    input we,
    input en,
    input [2:0] addr,
    input [data_width-1:0]di,
    output reg[data_width-1:0]do
  );


  reg [7:0] ram[0:7];//this is 8x8bit array
  integer i;
  always@(posedge(clock) or posedge(reset)) begin 
    if (reset == 1 ) begin
      for (i=0;i<=7;i=i+1) ram[i] <= 8'b0; //only way to init a array?
    end
    else if (en == 1) begin 
        if (we == 1) begin
            ram[7] <= ram[6];
            ram[6] <= ram[5];
            ram[5] <= ram[4];
            ram[4] <= ram[3];
            ram[3] <= ram[2];
            ram[2] <= ram[1];
            ram[1] <= ram[0];
            ram[0] <= di;
            do <= di;
        end else 
          do <= ram[addr];
     end 
  end
endmodule
