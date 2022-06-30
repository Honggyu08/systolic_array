module mux_eight(a, b, sel, out);

input  [7:0] a;
input  [7:0] b;
input        sel;

output [7:0] out;

genvar i;
generate
    for(i = 0; i < 8; i++): EIGHTMUX
        mux_two TWOMUX (.a(a[i]), .b(b[i]), .sel(sel), .out(out[i]));
    end
endgenerate

endmodule
