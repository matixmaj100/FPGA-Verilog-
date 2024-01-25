module test_xor_bramka;
	reg b=0;
	reg a=0;
	wire c;
	xor_bramka test(a,b,c);
	initial begin
 		a = 0; b = 0;
		#1;
		$display("%h\t %h\t %h\t",a,b,c);
		#1;
		a = 0; b = 1;	
		#1;
		$display("%h\t %h\t %h\t",a,b,c);
		#1;
		a = 1; b = 0;
		#1;
		$display("%h\t %h\t %h\t",a,b,c);
		#1;
		a=1;b=1;
		#1;
		$display("%h\t %h\t %h\t",a,b,c);
		#49;
		a=0;b=0;
		#1;
		$display("%h\t %h\t %h\t",a,b,c);
	end
endmodule