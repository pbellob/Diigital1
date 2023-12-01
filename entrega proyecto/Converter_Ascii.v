module Converter_Ascii(
    input wire [3:0] data,  // Dato de 4 bits
    output reg [7:0] ascii  // Carácter ASCII correspondiente
);

  always @* begin
    case (data)
      4'b0000: ascii = 8'h30; // 0
      4'b0001: ascii = 8'h31; // 1
      4'b0010: ascii = 8'h32; // 2
      4'b0011: ascii = 8'h33; // 3
      4'b0100: ascii = 8'h34; // 4
      4'b0101: ascii = 8'h35; // 5
      4'b0110: ascii = 8'h36; // 6
      4'b0111: ascii = 8'h37; // 7
      4'b1000: ascii = 8'h38; // 8
      4'b1001: ascii = 8'h39; // 9
    endcase
  end

endmodule
