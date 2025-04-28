`include "pe8x3.v"
module pe8x3_tb;
reg [7:0] a;
wire [2:0] y;
pe8x3 dut(a, y);
initial begin
$dumpfile("pe8x3_tb.vcd");
$dumpvars(1, pe8x3_tb);
$monitor("Time=%0t | a=%b -> y=%b", $time, a, y);

a = 8'b0000_0001; #10; //000
a = 8'b0000_0010; #10;  // 001
a = 8'b0000_0100; #10;  // 010
a = 8'b0000_1000; #10;  //011
a = 8'b0001_0000; #10;  //100
a = 8'b0010_0000; #10;   //101
a = 8'b0100_0000; #10;  //110
a = 8'b1000_0000; #10;  //111


 // Test cases with multiple inputs asserted (higher priority should win)
    a = 8'b00000011; #10; // a[1] should be prioritized over a[0] -> y = 001
    a = 8'b00000101; #10; // a[2] should be prioritized over a[0] -> y = 010
    a = 8'b00001100; #10; // a[3] should be prioritized over a[2] -> y = 011
    a = 8'b00110000; #10; // a[5] should be prioritized over a[4] -> y = 101
    a = 8'b11000000; #10; // a[7] should be prioritized over a[6] -> y = 111
    a = 8'b10101010; #10; // a[7] should have the highest priority -> y = 111
 $finish;

 end
 endmodule

