//Four bit full adder implemented by cascasing two bit full adders

module fourBitAdder_TwoByTwo(x3, x2, x1, x0, y3, y2, y1, y0, cin, s3, s2, s1, s0, cout); 

	input wire x3, x2, x1, x0, y3, y2, y1, y0, cin; 
	output wire s3, s2, s1, s0, cout; 

	wire cascadingCarry;

	twoBitAdder tA01(.x1(x1),  
			 .x0(x0),
			 .y1(y1),
			 .y0(y0),
			 .cin(cin),
			 .s1(s1),
			 .s0(s0),
			 .cout(cascasingCarry)); 

	twoBitAdder tA02(.x1(x3),  
			 .x0(x2),
			 .y1(y3),
			 .y0(y2),
			 .cin(cascasingCarry),
			 .s1(s3),
			 .s0(s2),
			 .cout(cout)); 

endmodule