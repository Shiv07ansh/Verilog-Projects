module hello; //every Verilog code has 'modules' in it that carry out the logic, they start with the keyword 'module'
	initial
		begin
			$display("hello ");
			$finish ;
		end //implementation block ends here
endmodule //module ends with the keyword 'endmodule'