module A05_ref (
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] p
);
    assign p = a * b;
endmodule