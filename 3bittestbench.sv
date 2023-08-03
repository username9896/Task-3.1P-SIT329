`timescale 1ns / 1ns

module threebitadder_tb;
  reg [2:0] t_a = 3'd0;
  reg [2:0] t_b = 3'd0;
  wire [2:0] t_sum;
  wire t_carry;
  
  threebit_adder tb
  (
    .a(t_a),
    .b(t_b),
    .sum(t_sum),
    .coutbit(t_carry)
  );

initial begin

$dumpfile("dump.vcd");
$dumpvars(1,threebitadder_tb);

t_a = 1;
t_b = 2;
#10
  $display("a=%d, b=%d, s=%d, cout=%d", t_a,t_b, t_sum,t_carry);

t_a = 3;
t_b = 3;
#10
  $display("a=%d, b=%d, s=%d, cout=%d", t_a,t_b, t_sum,t_carry);
  
t_a = 4;
t_b = 1;
#10
  $display("a=%d, b=%d, s=%d, cout=%d", t_a,t_b, t_sum,t_carry);
  
  $finish;


end
endmodule
