`timescale 1ns / 1ns

module simple_logic_circuit_tb;

    reg a_in , b_in , c_in ;
    wire y_out;
    simple_logic_circuit uut(
        .a(a_in),
        .b(b_in),
        .c(c_in),
        .y(y_out)
    );
    initial begin
        $dumpfile("simple_logic_circuit_tb.vcd");
        $dumpvars(0, simple_logic_circuit_tb);
        a_in = 0 ; b_in = 0 ; c_in = 0 ; #10;// Test case 1: a=0, b=0, c=0
        a_in = 0 ; b_in = 0 ; c_in = 1 ; #10;// Test case 2: a=0, b=0, c=1
        a_in = 0 ; b_in = 1 ; c_in = 0 ; #10;// Test case 3: a=0, b=1, c=0
        a_in = 0 ; b_in = 1 ; c_in = 1 ; #10;// Test case 4: a=0, b=1, c=1
        a_in = 1 ; b_in = 0 ; c_in = 0 ; #10;// Test case 5: a=1, b=0, c=0
        a_in = 1 ; b_in = 0 ; c_in = 1 ; #10;// Test case 6: a=1, b=0, c=1
        a_in = 1 ; b_in = 1 ; c_in = 0 ; #10;// Test case 7: a=1, b=1, c=0
        a_in = 1 ; b_in = 1 ; c_in = 1 ; #10;// Test case 8: a=1, b=1, c=1
        $finish;

    end


endmodule