module tb_not();

reg a;

wire out;

not_gate NOT(.a(a), .out(out));

initial begin
    a = 0; #10
    a = 1; #10
    a = 0; #10
    a = 1; #10;
end

initial begin
    $dumpfile("./wave/not.vcd");
    $dumpvars(0, tb_not);
end
endmodule
