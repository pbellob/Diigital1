module testbech;

  // STIMULUS
  // reg a = 0, b = 0;
  // initial
  // begin
  //   # 17 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 29 a = 1, b = 1;
  //   # 11 a = 1, b = 0;
  //   # 100 $finish(); // [stop(), $finish()]
  // end

  reg [3:0] input_a;
  integer i;
  reg [3:0] input_b;
  integer o;
  initial
  begin
    for (i=0; i<16; i=i+1)
    begin         
		input_a = i;
		for (o=0; o<16; o=o+1)
		begin         
		  input_b = o;
		  #1;
		end
    end
  end

  // CLOCK STIMULUS
  // Make a regular pulsing clock.
  // reg clk = 0;
  // always #5 clk = !clk;

  /* // RESULT FOR DEVICE/DESIGN UNDER TEST */
  wire [4:0] outs;
  // DEVICE/DESIGN UNDER TEST
  paralelladder dut (
	.a3(input_a[3]), .a2(input_a[2]), .a1(input_a[1]), .a0(input_a[0]), 
	.b3(input_b[3]), .b2(input_b[2]), .b1(input_b[1]), .b0(input_b[0]), 
	.s4(outs[4]), .s3(outs[3]), .s2(outs[2]), .s1(outs[1]), .s0(outs[0])
  );

  /* // MONITOR */
  // initial
  //   $monitor("Time: %t, a = %d, b = %d => out = %d",
  //     $time, a, b, value);

  // WAVES IN VCD TO OPEN IN GTKWAVE
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, testbech);
  end


endmodule
