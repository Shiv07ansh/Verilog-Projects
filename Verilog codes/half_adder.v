/* Half adder
It is a simple arithmetic circuit,
performs the addition of two single-bit binary numbers
The Sum is the XOR (Exclusive OR) of the two inputs.
Equation: 𝑆 = 𝐴 ⊕ 𝐵 
Carry is AND of the two inputs
C=A⋅B 
*/

// Logic : 2 Inputs, 2 Outputs

module (input a, b, output S, C) //default type if not specified is Nets
//I can also explicitly initialize the ports as input and output after the declaration( that was verilog 1995)

assign S = a ^ b;  //this is implicit continuous assignment 
assign C = a & b;

endmodule 

