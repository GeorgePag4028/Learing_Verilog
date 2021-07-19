module dec_3to8 (
    input [2:0] d_in,
    input e,
    output reg [7:0] d_out
);

    always @(d_in ) begin 
        if(e==1) begin 
            case(d_in)
                3'b000: begin d_out=8'b00000001; end
                3'b001: begin d_out=8'b00000010; end
                3'b010: begin d_out=8'b00000100; end
                3'b011: begin d_out=8'b00001000; end
                3'b100: begin d_out=8'b00010000; end
                3'b101: begin d_out=8'b00100000; end
                3'b110: begin d_out=8'b01000000; end
                3'b111: begin d_out=8'b10000000; end
            endcase
        end 
        else 
            d_out = 0;
    end 

endmodule 




