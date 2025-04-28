`include "encoder8x3.v"
module encoder8x3_tb;
reg [7:0] a;
wire [2:0] y;
encoder8x3 dut(a, y);
initial begin
$dumpfile("encoder8x3_tb.vcd");
$dumpvars(1, encoder8x3_tb);
$monitor("Time=%0t | a=%b -> y=%b", $time, a, y);

a = 8'b0000_0001; #10; //000
a = 8'b0000_0010; #10;  // 001
a = 8'b0000_0100; #10;  // 010
a = 8'b0000_1000; #10;  //011
a = 8'b0001_0000; #10;  //100
a = 8'b0010_0000; #10;   //101
a = 8'b0100_0000; #10;  //110
a = 8'b1000_0000; #10;  //111

$finish;
  end
  endmodule