
module CompUnsigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = a > b;
    assign \= = a == b;
    assign \< = a < b;
endmodule


module Mux_2x1_NBits #(
    parameter Bits = 2
)
(
    input [0:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


module intercambiador (
  input a3,
  input a2,
  input a1,
  input a0,
  input b3,
  input b2,
  input b1,
  input b0,
  input op,
  output ma,
  output eq,
  output me,
  output d0,
  output d1,
  output d2,
  output d3,
  output c0,
  output c1,
  output c2,
  output c3,
  output ne
);
  wire [3:0] s0;
  wire [3:0] s1;
  wire me_temp;
  wire ne_temp;
  wire [3:0] s2;
  wire [3:0] s3;
  assign s0[0] = a0;
  assign s0[1] = a1;
  assign s0[2] = a2;
  assign s0[3] = a3;
  assign s1[0] = b0;
  assign s1[1] = b1;
  assign s1[2] = b2;
  assign s1[3] = b3;
  CompUnsigned #(
    .Bits(4)
  )
  CompUnsigned_i0 (
    .a( s0 ),
    .b( s1 ),
    .\> ( ma ),
    .\= ( eq ),
    .\< ( me_temp )
  );
  assign ne_temp = (me_temp & op);
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i1 (
    .sel( ne_temp ),
    .in_0( s0 ),
    .in_1( s1 ),
    .out( s2 )
  );
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i2 (
    .sel( ne_temp ),
    .in_0( s1 ),
    .in_1( s0 ),
    .out( s3 )
  );
  assign d0 = s3[0];
  assign d1 = s3[1];
  assign d2 = s3[2];
  assign d3 = s3[3];
  assign c0 = s2[0];
  assign c1 = s2[1];
  assign c2 = s2[2];
  assign c3 = s2[3];
  assign me = me_temp;
  assign ne = ne_temp;
endmodule

module Demux1
#(
    parameter Default = 0 
)
(
    output out_0,
    output out_1,
    input [0:0] sel,
    input in
);
    assign out_0 = (sel == 1'h0)? in : Default;
    assign out_1 = (sel == 1'h1)? in : Default;
endmodule


module sumres (
  input op,
  input a,
  input b,
  input cbi,
  output s,
  output cbo
);
  wire s0;
  assign s0 = ~ a;
  assign s = ((s0 & ~ b & cbi) | (s0 & b & ~ cbi) | (a & ~ b & ~ cbi) | (a & b & cbi));
  assign cbo = ((a & cbi & ~ op) | (a & b & ~ op) | (s0 & cbi & op) | (s0 & b & op) | (b & cbi));
endmodule

module Suma_resta (
  input a1,
  input b1,
  input a0,
  input b0,
  input a3,
  input b3,
  input a2,
  input b2,
  input Op,
  output s1,
  output s0,
  output s3,
  output s2,
  output s4
);
  wire s5;
  wire s6;
  wire s7;
  sumres sumres_i0 (
    .op( Op ),
    .a( a0 ),
    .b( b0 ),
    .cbi( 1'b0 ),
    .s( s0 ),
    .cbo( s7 )
  );
  sumres sumres_i1 (
    .op( Op ),
    .a( a1 ),
    .b( b1 ),
    .cbi( s7 ),
    .s( s1 ),
    .cbo( s6 )
  );
  sumres sumres_i2 (
    .op( Op ),
    .a( a2 ),
    .b( b2 ),
    .cbi( s6 ),
    .s( s2 ),
    .cbo( s5 )
  );
  sumres sumres_i3 (
    .op( Op ),
    .a( a3 ),
    .b( b3 ),
    .cbi( s5 ),
    .s( s3 ),
    .cbo( s4 )
  );
endmodule

module base_conversor (
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

module seg7 (
  input f3,
  input f2,
  input f1,
  input f0,
  output a,
  output b,
  output c,
  output d,
  output e,
  output f,
  output g
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  assign s2 = ~ f3;
  assign s1 = ~ f2;
  assign s0 = ~ f1;
  assign s3 = ~ f0;
  assign a = ((f0 & s0 & s1 & s2) | (s3 & s0 & f2));
  assign b = ((f0 & s0 & f2) | (s3 & f1 & f2));
  assign c = (s3 & f1 & s1);
  assign d = ((f0 & s0 & s1) | (s3 & s0 & f2) | (f0 & f1 & f2));
  assign e = ((f0 & s2) | (f0 & s0) | (f0 & f2) | (s0 & f2));
  assign f = ((f0 & s1 & s2) | (f0 & f1) | (f1 & s1));
  assign g = ((f0 & f1 & f2) | (f0 & f1 & f3) | (s0 & s1 & s2));
endmodule

module top 
#(parameter INIT=0)
(
  input  clk,
  output r,

  input a3,
  input a2,
  input a1,
  input a0,
  input b3,
  input b2,
  input b1,
  input b0,
  input op,
  input enc,
  output ne,
  output a,
  output b,
  output c,
  output d,
  output e,
  output f,
  output g,
  output L1,
  output L2
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire s8;
  wire s9;
  wire s10;
  wire s11;
  wire s12;
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire s17;
  wire s18;
  wire s19;
  wire s20;
  wire s21;
  wire s22;
  wire s23;
  wire s24;
  wire s25;
  wire [3:0] s26;
  wire [3:0] s27;
  wire [3:0] s28;

  clock_divider #(.INIT(INIT)) div1
  (
    .clk_in(clk),
    .clk_out(r)
  );

  intercambiador intercambiador_i0 (
    .a3( a3 ),
    .a2( a2 ),
    .a1( a1 ),
    .a0( a0 ),
    .b3( b3 ),
    .b2( b2 ),
    .b1( b1 ),
    .b0( b0 ),
    .op( op ),
    .d0( s0 ),
    .d1( s1 ),
    .d2( s2 ),
    .d3( s3 ),
    .c0( s4 ),
    .c1( s5 ),
    .c2( s6 ),
    .c3( s7 ),
    .ne( s8 )
  );
  Demux1 #(
    .Default(0)
  )
  Demux1_i1 (
    .sel( r ),
    .in( enc ),
    .out_0( L1 ),
    .out_1( L2 )
  );
  Suma_resta Suma_resta_i2 (
    .a1( s5 ),
    .b1( s1 ),
    .a0( s4 ),
    .b0( s0 ),
    .a3( s7 ),
    .b3( s3 ),
    .a2( s6 ),
    .b2( s2 ),
    .Op( op ),
    .s1( s9 ),
    .s0( s10 ),
    .s3( s11 ),
    .s2( s12 ),
    .s4( s13 )
  );
  assign ne = ~ s8;
  base_conversor base_conversor_i3 (
    .e4( s13 ),
    .e3( s11 ),
    .e2( s12 ),
    .e1( s9 ),
    .e0( s10 ),
    .d3( s14 ),
    .d2( s15 ),
    .d1( s16 ),
    .d0( s17 ),
    .u3( s18 ),
    .u2( s19 ),
    .u1( s20 ),
    .u0( s21 )
  );
  assign s26[0] = s17;
  assign s26[1] = s16;
  assign s26[2] = s15;
  assign s26[3] = s14;
  assign s28[0] = s21;
  assign s28[1] = s20;
  assign s28[2] = s19;
  assign s28[3] = s18;
  Mux_2x1_NBits #(
    .Bits(4)
  )
  Mux_2x1_NBits_i4 (
    .sel( r ),
    .in_0( s26 ),
    .in_1( s28 ),
    .out( s27 )
  );
  assign s25 = s27[0];
  assign s24 = s27[1];
  assign s23 = s27[2];
  assign s22 = s27[3];
  seg7 seg7_i5 (
    .f3( s22 ),
    .f2( s23 ),
    .f1( s24 ),
    .f0( s25 ),
    .a( a ),
    .b( b ),
    .c( c ),
    .d( d ),
    .e( e ),
    .f( f ),
    .g( g )
  );
endmodule
