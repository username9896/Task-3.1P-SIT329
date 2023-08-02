`timescale 1ns / 1ns

module fulladder_tb;

// Inputs
reg t_a;
reg t_b;
reg t_cin;

// Outputs
wire t_sum;
wire t_cout;

// Instantiate the Unit Under Test (UUT)
full_adder ha (
.a(t_a),
.b(t_b),
.cin(t_cin),
.sum(t_sum),
.cout(t_cout)
);

initial begin

t_a = 0;
t_b = 0;
t_cin = 0;
#10
  $display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);

t_a = 0;
t_b = 0;
t_cin = 1;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);

t_a = 0;
t_b = 1;
t_cin = 0;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);
  
t_a = 0;
t_b = 1;
t_cin = 1;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);

t_a = 1;
t_b = 0;
t_cin = 0;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);
  
t_a = 1;
t_b = 0;
t_cin = 1;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);
  
t_a = 1;
t_b = 1;
t_cin = 0;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);
  
t_a = 1;
t_b = 1;
t_cin = 1;
#10
$display("a=%d, b=%d, c=%d, s=%d, cout=%d", t_a,t_b,t_cin, t_sum,t_cout);


$finish;

end
endmodule
