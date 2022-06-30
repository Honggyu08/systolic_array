module demux_two(a, sel, out_a, out_not);

input a;
input sel;

output out_a;
output out_not;

wire not_sel;

not_gate NOTSEL(.a(sel), .out(not_sel));
and_gate ASEL(.a(a), .b(sel), .out(out_a));
and_gate NOTA(.a(a), .b(not_sel), .out(out_not));

endmodule
