module mux_two(a, b, sel, out);

input a;
input b;
input sel;

output out;

wire not_sel;
wire sel_a;
wire sel_b;

not_gate NOTSEL(.a(sel), .out(not_sel));
and_gate BSEL(.a(b), .b(not_sel), .out(sel_b);
and_gate ASEL(.a(a), .b(sel), .out(sel_a);
or_gate SEL(.a(sel_a), .b(sel_b), .out(out));

endmodule
