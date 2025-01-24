/* Full adder but with 2 half adders 
for a full adder, we have a Sum and a Carry
Sum = a ^ b ^ Cin
Carry = (a^b) + (b^Cin) + (Cin^a)
*/ 

/*This is learn how to instantiate a module in another module*/

module fulladd(a, b, Cin, Sum, Carry);

input a, b, Cin;
output Sum, Carry;

wire n_carry1, n_carry2, n_sum;
 
/*
instead of using assignment we will simply form port connections for 2 instances of half adders with appropriate logic
we need to include the files that contain the halfadd module in the compile statement in CMD so iverilog knows 
where to find the module
*/
 halfadd H1(.a(a), .b(b), .S(n_sum), .C(n_carry1)); //This is called port connecting by name
 halfadd H2(.a(n_sum), .b(Cin), .S(sum), .C(n_carry2));  
 assign Carry = n_carry2 ^ n_carry1; 
 
 
 /* Can also use the built-in 'or' gate primitive 
 or U3(carry, n_carry1, n_carry2);
 need to make sure the order is correct
 */

endmodule 

/*
Compile errors:

D:\Software\GitHub Desktop\Verilog-Projects\code\full_adder_half.v:19: error: port ``sum'' is not a port of H1.
D:\Software\GitHub Desktop\Verilog-Projects\code\full_adder_half.v:19: error: port ``carry'' is not a port of H1.
D:\Software\GitHub Desktop\Verilog-Projects\code\full_adder_half.v:20: error: port ``sum'' is not a port of H2.
D:\Software\GitHub Desktop\Verilog-Projects\code\full_adder_half.v:20: error: port ``carry'' is not a port of H2.
D:\Software\GitHub Desktop\Verilog-Projects\code\full_adder_half.v:21: error: Unable to bind wire/reg/memory `n_carry1' in `fulladd'
D:\Software\GitHub Desktop\Verilog-Projects\code\full_adder_half.v:21: error: Unable to elaborate r-value: (n_carry2)^(n_carry1)
*/

/*
Fixes:

there were no wires for internal signals: added wire n_carry1, n_carry2, n_sum;
the names of the ports for the instantiation were wrong

*/
