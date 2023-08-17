module control_unit(
  input clock,
  input reset,
  input valid_in,
  output reg [2:0] rom_address,
  output reg [2:0] ram_address,
  output reg mac_init,
  output reg we,
  output reg en
);

reg [2:0] counter;
initial counter =0 ; 

always @ (posedge clock or posedge reset) begin
  if (reset == 1) 
    counter <= 0;
  else begin
    if (counter == 0 && valid_in == 1 ) begin
      en = 1;
      we <= 1;
      mac_init <= 1;
      rom_address <= counter;
      ram_address <= counter;
      counter <= counter + 1;
    end
    else if (counter == 0 && valid_in == 0) begin
      we <= 0;
      mac_init <= 1;
      en <= 0;
    end
    else if (counter != 0) begin 
      en <= 1;
      mac_init <= 0;
      we <= 0;
      rom_address <= counter;
      ram_address <= counter;
      counter <= counter + 1;
    end
  end
end
endmodule