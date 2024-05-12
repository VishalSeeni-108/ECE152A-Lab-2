// Four-bit adder with two bit adders testbench

module TwoByTwo_tb; 
	reg [3:0] A, B; 
	wire [3:0] S; 
	reg cin;
	wire cout; 

	fourBitAdder_TwoByTwo f0(.x3(A[3]),
				  .x2(A[2]),
				  .x1(A[1]),
				  .x0(A[0]),
				  .y3(B[3]),
				  .y2(B[2]),
				  .y1(B[1]),
				  .y0(B[0]),
				  .cin(cin),
				  .s3(S[3]),
				  .s2(S[2]),
				  .s1(S[1]),
				  .s0(S[0]),
				  .cout(cout));

	initial begin
		A = 'b0000; 
		B = 'b0000; 
		cin = 'b0; 
		#10
		A = 'b1111; 
		B = 'b1111; 
		cin = 'b1; 
		#10
		A = 'b1010; 
		B = 'b0101; 
		cin = 'b0; 
		#10
		A = 'b1100; 
		B = 'b0001; 
		cin = 'b1; 
		#10
		A = 'b0111; 
		B = 'b0000; 
		cin = 'b1; 	
	end
endmodule