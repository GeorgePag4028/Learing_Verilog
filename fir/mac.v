module mac #(parameter data_width = 8)(
  input clock,
  input reset,
  input [data_width-1:0] rom_out,
  input [data_width-1:0] ram_out,
  input mac_init,
  output reg [data_width*2+2:0] y,
  output reg valid_out
); 

reg [data_width*2+2:0] y_temp;
reg [2:0] counter;

initial begin counter = 0; y_temp = 0; end

assign y = y_temp;
always@(posedge clock) begin
  if(mac_init == 1) y_temp <= {3'b000,rom_out*ram_out};
  else y_temp <= {y_temp + rom_out*ram_out};
end


always@(posedge clock or posedge reset) begin
  if (reset == 1) valid_out <= 0;
  else begin 
    if (mac_init == 1 && counter != 6) begin counter <= 0; valid_out <= 0; end 
    else if (mac_init == 0 && counter == 6) begin counter <= 0; valid_out <= 1; end
    else if (mac_init == 1 && counter == 6) begin counter <= 0; valid_out <= 1; end
    else begin counter <= counter + 1; valid_out <= 0; end 
  end
  
end

endmodule