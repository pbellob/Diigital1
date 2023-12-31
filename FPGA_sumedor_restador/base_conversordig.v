/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module base_conversordig (
  input e4,
  input e3,
  input e2,
  input e1,
  input e0,
  output d3,
  output d2,
  output d1,
  output d0,
  output u3,
  output u2,
  output u1,
  output u0
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  assign d3 = 1'b0;
  assign d1 = ((e2 & e4) | (e3 & e4));
  assign s0 = ~ e4;
  assign s2 = ~ e3;
  assign s1 = ~ e2;
  assign s3 = ~ e1;
  assign d0 = ((e1 & e3 & s0) | (e1 & e2 & e3) | (e2 & e3 & s0) | (s1 & s2 & e4));
  assign u3 = ((s3 & s1 & e3 & s0) | (e1 & s1 & s2 & e4) | (s3 & e2 & e3 & e4));
  assign u2 = ((e1 & e2 & s0) | (s3 & s1 & e4) | (e2 & s2 & s0) | (s1 & e3 & e4));
  assign u1 = ((e1 & s2 & s0) | (s3 & e2 & e3 & s0) | (s3 & s1 & s2 & e4) | (e1 & e2 & s2) | (e1 & s1 & e3 & e4));
  assign u0 = e0;
endmodule
