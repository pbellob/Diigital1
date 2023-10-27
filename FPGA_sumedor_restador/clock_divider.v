module clock_divider 
#(parameter INIT=0)
(
  input clk_in,
  output reg clk_out = 0
);

parameter SIZE = 16; // Aumentamos SIZE para manejar 100 Hz
parameter LIMIT = 16'd50000; // Establecemos LIMIT para 100 Hz

reg [SIZE-1:0] count = INIT;

always @(posedge clk_in)
begin
  if (count == LIMIT)
  begin
    count <= 0;
    clk_out <= ~clk_out;
  end
  else
  begin
    count <= count + 1;
  end
end

endmodule

