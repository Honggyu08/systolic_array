module (clk, r_en, inp, outp);

input        clk;
input  [7:0] inp;

output [7:0] outp;

genvar i;
generate
    for(i = 0; i < 8 ; i++) :REGEIGHT
        register REG (.clk(clk), .inp(inp[i]), .outp(outp[i]));
    end
endgenerate
endmodule
