module decoder24_tb;

reg en, a, b;
wire [3:0]y;

initial
begin 
	$dumpfile("24decoder.vcd");
	$dumpvars(0);
end

decoder24 dut (en, a, b, y);
initial
  begin
    $monitor("en=%b a=%b b=%b y=%b", en,a,b,y);
	en = 1; a=1'bx; b=1'bx; #10
	en = 0; a=0; b=0; #10
	en = 0; a=0; b=1; #10
	en = 0; a=1; b=0; #10
	en = 0; a=1; b=1; #10
  $finish;
  end
endmodule