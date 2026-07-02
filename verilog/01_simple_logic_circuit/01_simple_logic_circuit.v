module simple_logic_circuit(
    input wire a,
    input wire b, 
    input wire c, 
    output wire y
);
wire c_not, a_and_b;
assign c_not = ~c;
assign a_and_b = a & b;
assign y = a_and_b | c_not;

endmodule