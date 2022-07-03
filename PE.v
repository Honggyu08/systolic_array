module PE(clk, md, inp, add, pass_d, pass_r);

input clk;
input inp;
input add;
input md;  // mode

output pass_d;  // pass the data to down
output pass_r;  // pass the data to right

always@(posedge clk) begin
    if(md) begin

