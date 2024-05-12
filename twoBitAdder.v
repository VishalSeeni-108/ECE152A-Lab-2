//Two bit full adder implemented by cascasing two one bit full adders

module twoBitAdder(x1, x0, y1, y0, cin, s1, s0, cout); 

	input wire x1, x0, y1, y0, cin; 
	output wire s1, s0, cout; 

	wire cascadingCarry; 

	fullAdder fA0( .a(x0),
		       .b(y0), 
		       .cin(cin), 
		       .s(s0),
		       .cout(cascadingCarry)); 

	fullAdder fA1( .a(x1),
		       .b(y1), 
		       .cin(cascadingCarry), 
		       .s(s1),
		       .cout(cout)); 
endmodule