/* Simple MUX basics
a 2x1 MUX
in a MUX, 2^n inputs correspond to 1 output.
there's n Switch Lines, 2^n Input Lines and 1 output line */

//Output C = S&A + S'&B
module mux_2x1(A,B, C, S)
input A, B, S;
output C;

assign C = S&A + ~S&B; // '~' is the NOT

endmodule

