`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:53:18 03/17/2021
// Design Name:   seqD110and101
// Module Name:   D:/Labs/CAD-I/Shubham Singh/seqdetector110and101/seqdet110and101_tb.v
// Project Name:  seqdetector110and101
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seqD110and101
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seqdet110and101_tb;

	// Inputs
	reg x;
	reg clk;
	reg rstn;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	seqD110and101 uut (
		.x(x), 
		.clk(clk), 
		.rstn(rstn), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;
		rstn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$monitor($time,"rstn=%b ,x=%b ,y=%b ", rstn,x,y);
		#5 rstn=1;
		#10 rstn=0;
		x=1;
		#4 x=0;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=1;
		#10 x=0;
		#10 x=0;
		#10 x=1;
		#10 x=1;
		#10 x=0;
		#10 x=0;
		#10 x=1;
		#100
		$finish;	

	end
      
endmodule

