module test_bench_halfadd; // (a, b, S, C);
reg a, b;
wire S, C;

//DUT initialization
halfadd H1(.a(a), .b(b), .S(S), .C(C));

//Signal Initialization
initial
begin 
	a=0; b=0;
end

//Stimulus generation
initial 
begin

//Create a dumpfile for GTKwave
$dumpfile("halfadd_waveform.vcd");  // Specify the name of the VCD (Value Change Dump) file
$dumpvars(0, test_bench_halfadd);   // Dump all signals in this module

	#10 a=1; b =0;
	#10;
	
	a=0; b=0;
	#10;
	
	a=1; b=1;
	#10;
	
	a=0; b=1;
	#10
	
	$finish;
	
end

//Monitor Outputs
initial
begin
	$monitor("Time = %0t | a = %b, b = %b, C = %b | S = %b", $time, a, b, C, S);

end
endmodule
	
	
	/* 
Errors:

D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:11: error: a is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : a is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:11: error: b is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : b is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:11: error: C is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:3:      : C is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:16: error: a is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : a is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:16: error: b is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : b is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:16: error: C is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:3:      : C is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:19: error: a is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : a is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:19: error: b is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : b is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:19: error: C is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:3:      : C is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:22: error: a is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : a is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:22: error: b is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : b is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:22: error: C is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:3:      : C is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:25: error: a is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : a is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:25: error: b is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:2:      : b is declared here as wire.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:25: error: C is not a valid l-value in test_bench_halfadd.
D:\Software\GitHub Desktop\Verilog-Projects\code\half_adder_tb.v:3:      : C is declared here as wire.
15 error(s) during elaboration.

*/

/* Fixes:
removed the output initialization

removed the $finish from the wrong block

added a dumpfile for gtkwave

*/

/* Fixes: 
inputs in testbench need to be declared as reg and outputs as wires. 
*/