module asignaciones (
  input O,
  input A,
  input B,
  input CBi,
  output CBo,
  output S
);
  wire s0;
  assign s0 = ~ A;
  assign CnotBo = ((A & CBi & ~ O) | (A & B & ~ O) | (s0 & CBi & O) | (s0 & B & O) | (B & CBi));
  assign S = ((s0 & ~ B & CBi) | (s0 & B & ~ CBi) | (A & ~ B & ~ CBi) | (A & B & CBi));
endmodule
