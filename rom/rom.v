module rom #(parameter data_width =8)

  (
    input clock,
    input en,
    input [2:0] addr,
    output reg[data_width-1:0]rom_out
  );

  always@(posedge(clock)) begin 
    if (en == 1) begin 
        case(addr)
          3'b000:rom_out <= 8'b00000001;
          3'b001:rom_out <= 8'b00000010;
          3'b010:rom_out <= 8'b00000011;
          3'b011:rom_out <= 8'b00000100;
          3'b100:rom_out <= 8'b00000101;
          3'b101:rom_out <= 8'b00000110;
          3'b110:rom_out <= 8'b00000111;
          3'b111:rom_out <= 8'b00001000;
        endcase
     end
     // $display("rom[0]:0b%b rom[1]:0b%b rom[2]:0b%b rom[3]:0b%b \nrom[4]:0b%b rom[5]:0b%b rom[6]:0b%b rom[7]:0b%b",rom[0],rom[1],rom[2],rom[3],rom[4],rom[5],rom[6],rom[7]); 
  end
endmodule
