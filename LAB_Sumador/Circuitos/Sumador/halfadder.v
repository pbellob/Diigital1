/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module halfadder (
  input A,
  input B,
  output Co,
  output S
);
  assign S = (A ^ B);
  assign Co = (A & B);
endmodule