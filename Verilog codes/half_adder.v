/* Half adder
It is a simple arithmetic circuit,
performs the addition of two single-bit binary numbers
The Sum is the XOR (Exclusive OR) of the two inputs.
Equation: 𝑆 = 𝐴 ⊕ 𝐵 
Carry is AND of the two inputs
C=A⋅B 
*/

// Logic : 2 Inputs, 2 Outputs

module halfadd(a, b, S, C); //default type if not specified is Nets

input a, b;
output S, C;

assign S = a ^ b;  //this is implicit continuous assignment 
assign C = a & b;

endmodule 

/* Fixes: 
	I forgot the name of the module 
	input and output should be decalred for all of the ports
	missed ; in module declaration
*/