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
