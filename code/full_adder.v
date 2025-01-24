/* Full Adder
Addition of three binary bits: two input bits and a carry-in bit.
Logic: 
Sum Calculation: XOR of all three inputs.
Sum = A ^ B ^ Cin
Carry Out: It happens if any 2 or all 3 of inputs is 1.
*/

/*Here I am going to implement a full adder on its own */

module fulladd (a, b, Cin, Sum, Carry);

input a, b, Cin ;
output Sum, Carry;

assign Sum  = a ^ b ^ Cin; 
assign Carry = (a^b) + (b^Cin) + (Cin^a);

endmodule