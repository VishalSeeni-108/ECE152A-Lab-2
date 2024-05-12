//Four bit full adder implemented by cascasing four full adders

module fourBitAdder_FourByOne(x3, x2, x1, x0, y3, y2, y1, y0, cin, s3, s2, s1, s0, cout); 

	input wire x3, x2, x1, x0, y3, y2, y1, y0, cin; 
	output wire s3, s2, s1, s0, cout; 

	wire cascadingCarry1, cascasingCarry2, cascadingCarry3; 

	fullAdder fA0( .a(x0),
		       .b(y0), 
		       .cin(cin), 
		       .s(s0),
		       .cout(cascadingCarry1)); 

	fullAdder fA1( .a(x1),
		       .b(y1), 
		       .cin(cascadingCarry1), 
		       .s(s1),
		       .cout(cascadingCarry2)); 

	fullAdder fA2( .a(x2),
		       .b(y2), 
		       .cin(cascadingCarry2), 
		       .s(s2),
		       .cout(cascadingCarry3)); 

	fullAdder fA3( .a(x3),
		       .b(y3), 
		       .cin(cascadingCarry3), 
		       .s(s3),
		       .cout(cout)); 

endmodule