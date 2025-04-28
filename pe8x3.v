// // DATA FLOW MODELING

// module pe8x3(input [7:0]a, output [2:0]y);
// assign y[2]=a[7] | a[6] | a[5] |a[4];
// assign y[1]= ~a[5]& ~a[4] & (a[2] | a[3]) | a[6] | a[7];
// assign y[0]= ~a[6] & ((~a[4] & ~a[2]& a[1] | ~a[4] & a[3]) |a[5]) | a[7];
// endmodule

// // BEHAVIOURAL MODELING
// module pe8x3(input [7:0] a, output reg [2:0] y);
//   always @(a) begin
//     case (1'b1)  // Use '1' as the condition to always evaluate the cases
//       a[7]: y = 3'b111;
//       a[6]: y = 3'b110;
//       a[5]: y = 3'b101;
//       a[4]: y = 3'b100;
//       a[3]: y = 3'b011;
//       a[2]: y = 3'b010;
//       a[1]: y = 3'b001;
//       default: y = 3'b000; //Handles the case where no input is high
//     endcase
//   end
// endmodule


// GATE -LEVEL MODELING: 
module pe8x3(input [7:0] a, output [2:0] y);
  wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13;

  // Calculate y[2]
  or (w1, a[4], a[5]);
  or (w2, w1, a[6]);
  or (y[2], w2, a[7]);

  // Calculate y[1]
  not (w3, a[5]);
  not (w4, a[4]);
  and (w5, w3, w4);
  or  (w6, a[2], a[3]);
  and (w7, w5, w6);
  or  (y[1], a[6], a[7], w7);

  // Calculate y[0]
  not (w8, a[6]);
  not (w9, a[4]);
  not (w10, a[2]);
  and (w11, w9, w10);
  and (w12, w11, a[1]);
  and (w13, w9, a[3]);
  or  (w14, w12, w13);
  and (w15, w8, w14);
  or  (y[0], a[5], a[7], w15);

endmodule
