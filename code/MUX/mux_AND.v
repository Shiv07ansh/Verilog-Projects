/* How to implement AND, OR, NOT gates with a 2x1 MUX
*/


module mux_AND(I1, I2, S, O);
input I1, I2, S;
output O;

assign O =