module register(clk, inp, outp);

input clk;
input inp;

output outp;

always@(posedge clk) begin
    outp <= inp;
end
endmodule
