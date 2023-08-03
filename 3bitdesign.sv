// Code your design here
`timescale 1ns/1ns

module half_adder
(
input a,
input b,
output s,
output c
);

assign s = a ^ b; // bitwise xor
assign c = a & b; // bitwise and

endmodule // half_adder

// Code your design here
`timescale 1ns/1ns

module full_adder
(
input a,
input b,
input cin,
output sum,
output cout
);

assign sum = a ^ b ^ cin;
assign cout = (a & b) | (a & cin) | (b & cin);

endmodule // full_adder

module threebit_adder
(
  input [2:0] a, b,
  output[2:0] sum,
  output coutbit
);
  wire c0, c1;
  half_adder h1(.a(a[0]), .b(b[0]), .s(sum[0]), .c(c0));
  full_adder f1(.a(a[1]), .b(b[1]), .cin(c0), .sum(sum[1]), .cout(c1));
  full_adder f2(.a(a[2]), .b(b[2]), .cin(c1), .sum(sum[2]), .cout(coutbit));
endmodule
