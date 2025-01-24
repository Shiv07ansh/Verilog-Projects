module test_bench_halfadd (a, b, S, C);
input a, b;
output S, C;

//DUT initialization
halfadd H1(.a(a), .b(b), .S(S), .C(C));


initial
begin 
	a=0; b=0; C=0;
end

initial 
begin
	#10 a=1; b =0; C=0;
	#10;
	
	a=0; b=0; C=0;
	#10;
	
	a=1; b=1; C=1;
	#10;
	
	a=0; b=1; C=1;
	
end


initial
begin
	$monitor("Time = %0t | a = %b, b = %b, C = %b | S = %b", $time, a, b, C, S);
	$finish;
end
endmodule
	
	