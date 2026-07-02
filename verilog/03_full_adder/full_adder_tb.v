`timescale 1ns/1ns

module full_adder_tb;

reg a_in;
reg b_in;
reg cin_in;
wire sum_out;
wire cout_out;

full_adder uut(
    .a(a_in),
    .b(b_in),
    .cin(cin_in),
    .cout(cout_out),
    .sum(sum_out)
);
initial begin
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);
    a_in = 0; b_in = 0; cin_in = 0; #10; // Test case 1: a=0, b=0, cin=0
    a_in = 0; b_in = 0; cin_in = 1; #10; // Test case 2: a=0, b=0, cin=1
    a_in = 0; b_in = 1; cin_in = 0; #10; // Test case 3: a=0, b=1, cin=0
    a_in = 0; b_in = 1; cin_in = 1; #10; // Test case 4: a=0, b=1, cin=1
    a_in = 1; b_in = 0; cin_in = 0; #10; // Test case 5: a=1, b=0, cin=0
    a_in = 1; b_in = 0; cin_in = 1; #10; // Test case 6: a=1, b=0, cin=1
    a_in = 1; b_in = 1; cin_in = 0; #10; // Test case 7: a=1, b=1, cin=0
    a_in = 1; b_in = 1; cin_in = 1; #10; // Test case 8: a=1, b=1, cin=1
    $finish;

end



endmodule