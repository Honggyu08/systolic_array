module xnor_gate(a, b, out);

input a;
input b;

output out;

wire not_a;
wire not_b;
wire and_out;
wire not_and_out;

not_gate notA(.a(a), .out(not_a));
not_gate notB(.a(b), .out(not_b));
and_gate andOut(.a(a), .b(b), .out(and_out));
and_gate notAnd(.a(not_a), .b(not_b), .out(not_and_out));
or_gate orOut(.a(and_out), .b(not_and_out), .out(out));

endmodule
