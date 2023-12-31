/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module seg7 (
  input [3:0] e,
  output [6:0] s
);
  wire e_0;
  wire e_1;
  wire e_2;
  wire s0;
  wire s1;
  wire s2;
  wire e_3;
  wire s3;
  assign e_0 = e[0];
  assign e_1 = e[1];
  assign e_2 = e[2];
  assign e_3 = e[3];
  assign s2 = ~ e_3;
  assign s1 = ~ e_2;
  assign s0 = ~ e_1;
  assign s3 = ~ e_0;
  assign s[0] = ((e_0 & s0 & s1 & s2) | (s3 & s0 & e_2) | (s3 & e_2 & e_3));
  assign s[1] = ((e_0 & s0 & e_2) | (s3 & e_1 & e_2) | (s3 & e_1 & e_3) | (s3 & e_2 & e_3));
  assign s[2] = ((s3 & e_1 & s1) | (s3 & e_1 & e_3) | (s0 & e_2 & e_3));
  assign s[3] = ((e_0 & s0 & s1) | (s3 & s0 & e_2 & s2) | (e_0 & e_1 & e_2 & s2) | (s3 & e_1 & e_3) | (e_0 & s1 & e_3));
  assign s[4] = ((e_0 & s2) | (e_0 & s0 & s1) | (s3 & e_1 & e_2 & e_3) | (s0 & e_2 & s2));
  assign s[5] = ((e_0 & s1 & s2) | (e_0 & e_1 & s2) | (s3 & e_1 & e_2 & e_3) | (e_1 & s1 & s2));
  assign s[6] = ((e_0 & e_1 & e_2) | (s0 & s1 & s2) | (e_2 & e_3));
endmodule
