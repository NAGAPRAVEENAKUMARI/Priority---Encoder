// // module encoder8x3(input [7:0]a, output [2:0]y);
// // assign y[0]= a[4] | a[5] | a[6] | a[7];
// // assign y[1]= a[2] | a[3] | a[6] | a[7];  this code is wrong when we assign wrong way
// // assign y[2]= a[1] | a[3] | a[5] | a[7];
// // endmodule
 
// //DATA- FLOW:
// module encoder8x3(input [7:0]a, output [2:0]y);
// assign y[2] = a[7] | a[6] | a[5] | a[4];
// assign y[1] = a[7] | a[6] | a[3] | a[2];
// assign y[0] = a[7] | a[5] | a[3] | a[1];
// endmodule

// //BEHAVIOURAL -MODEL:

// module encoder8x3(input [7:0] a, output reg [2:0] y);
//   always @(a) begin
//     if (a[0]) y = 3'b000;
//     else if (a[1]) y = 3'b001;
//     else if (a[2]) y = 3'b010;
//     else if (a[3]) y = 3'b011;
//     else if (a[4]) y = 3'b100;
//     else if (a[5]) y = 3'b101;
//     else if (a[6]) y = 3'b110;
//     else if (a[7]) y = 3'b111;
//     else y = 3'b000; // Default case, handles when no input is active. 
//   end
// endmodule

//GATE -LEVEL:
module encoder8x3(input [7:0] a, output [2:0] y);
wire w1, w2, w3;
  or (w1, a[7], a[6], a[5], a[4]);
  or (w2, a[7], a[6], a[3], a[2]);
  or (w3, a[7], a[5], a[3], a[1]);
assign y[2]=w1;
assign y[1]=w2;
assign y[0]=w3;
endmodule

