`include "priorityencoder4x2.v"

module priorityencoder4x2_tb;
  reg [3:0] a;
  wire [1:0] y;

  priorityencoder4x2 dut(a, y);

  initial begin
    $dumpfile("priorityencoder4x2_tb.vcd");
    $dumpvars(0, priorityencoder4x2_tb);
    $monitor("Time=%0t a=%b y=%b", $time, a, y);

    a = 4'b0000; #10;
    a = 4'b0001; #10;
    a = 4'b0010; #10;
    a = 4'b0100; #10;
    a = 4'b1000; #10;

    $finish;
  end
endmodule