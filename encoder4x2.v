// DATA FLOW:
module encoder4x2 (input [3:0]a, output [1:0]y);
assign y[1]=a[2] | a[3];
assign y[0]=a[1] | a[3];
endmodule

// GATE -LEVEL:

module encoder4x2(input [3:0]a, output [1:0]y);
wire w1, w2;

or(w1, a[1], a[3]);
or(w2, a[2], a[3]);

assign y[0]= w1;
assign y[1]= w2;
endmodule


//BEHAVIOURAL - MODEL:
module encoder4x2(input [3:0]a, output reg [1:0]y);
always@ (a) begin
    if (a[0]) y=2'b00;
    else if (a[1]) y =2'b01;
    else if (a[2]) y=2'b10;
    else if (a[3]) y=2'b11;
    else y=2'b00;
end
endmodule