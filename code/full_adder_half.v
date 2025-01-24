/* Full adder but with 2 half adders 
for a full adder, we have a Sum and a Carry
Sum = a ^ b ^ Cin
Carry = (a^b) + (b^Cin) + (Cin^a)
*/ 

/*This is learn how to instantiate a module in another module*/

module fulladd(a, b, Cin, Sum, Carry);

input a, b, Cin;
output Sum, Carry;
 
/*
instead of using assignment we will simply form port connections for 2 instances of half adders with appropriate logic
we need to include the files that contain the halfadd module in the compile statement in CMD so iverilog knows 
where to find the module
*/
 halfadd H1(.a(a), .b(b), .sum(n_sum), .carry(n_carry)); 
 halfadd H2(.a(n_sum), .b(Cin), .sum(sum), .carry(n_carry2));
 assign Carry = n_carry2 ^ n_carry1; 
 
 
 /* Can also use the Or gate primitive 
 or U3(carry, n_carry1, n_carry2);
 need to make sure the order is correct
 */

endmodule 