module demux_eight(a, sel, out_a, out_not);

input  [7:0] a;
input        sel;

output [7:0] out_a;
output [7:0] out_not;

genvar i;
generate
    for(i = 0; i < 8; i++) :EIGHTDEMUX
        demux_two TWODEMUX(.a([i]), .sel(sel), .out_a(out_a[i]), .out_not(out_not[i]));
    end
endgenerate

endmodule
