`timescale  1ns/1ns

module half_adder_tb;

reg a_in , b_in;
wire sum_out , carry_out;

half_adder uut(
    .a(a_in),
    .b(b_in),
    .sum(sum_out),
    .carry(carry_out)
);

initial begin
    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0, half_adder_tb);
    a_in = 0 ; b_in = 0 ; #10;// Test case 1: a=0, b=0
    a_in = 0 ; b_in = 1 ; #10;// Test case 2: a=0, b=1
    a_in = 1 ; b_in = 0 ; #10;// Test case 3: a=1, b=0
    a_in = 1 ; b_in = 1 ; #10;// Test case 4: a=1, b=1
    $finish;
end




endmodule