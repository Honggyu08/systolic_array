module tb_or();

reg a;
reg b;

wire out;

or_gate OR (.a(a), .b(b), .out(out));

initial begin
    a = 0;
    b = 0; #10
    a = 1; #10
    a = 0;
    b = 1; #10
    a = 1;
    b = 1; #10;
end

initial begin
    $dumpfile("./wave/or.vcd");
    $dumpvars(0, tb_or);
end
endmodule
