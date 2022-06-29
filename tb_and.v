module tb_and();

reg a;
reg b;

wire out;

and_gate AND1 (.a(a), .b(b), .out(out));

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
    $dumpfile("./wave/and.vcd");
    $dumpvars(0, tb_and);
end
endmodule
