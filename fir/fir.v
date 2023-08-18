module fir(
  input clock,
  input reset, 
  input valid_in,
  input [7:0] x,
  output reg [18:0] y,
  output reg valid_out
);

reg [2:0] rom_address_control_unit;
reg [2:0] ram_address_control_unit;
reg mac_init_control_unit;
reg [7:0] ram_out_ram;
reg [7:0] rom_out_rom;
reg en_control_unit;
reg we_control_unit;
reg mac_init_mac;
reg [7:0] xt;

always@(posedge clock) begin
  mac_init_mac <= mac_init_control_unit;
  xt <= x;
end
control_unit cudut(.clock(clock),.reset(reset),.valid_in(valid_in),.rom_address(rom_address_control_unit),
                   .ram_address(ram_address_control_unit),.mac_init(mac_init_control_unit),.we(we_control_unit),
                   .en(en_control_unit));
rom romdut(.clock(clock),.en(en_control_unit),.addr(rom_address_control_unit),.rom_out(rom_out_rom));
ram ramdut(.clock(clock),.reset(reset),.we(we_control_unit),.en(en_control_unit),.addr(ram_address_control_unit),.di(xt),.dio(ram_out_ram));
mac macdut(.clock(clock),.reset(reset),.rom_out(rom_out_rom),.ram_out(ram_out_ram),.mac_init(mac_init_mac),.y(y),.valid_out(valid_out));
endmodule