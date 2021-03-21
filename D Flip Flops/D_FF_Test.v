`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:23:16 12/05/2020
// Design Name:   D_FF
// Module Name:   D:/Labs/CAD/Shubham Singh/D_FF/D_FF_Test.v
// Project Name:  D_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_Test;

	// Inputs
	reg clk;
	reg D;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.clk(clk), 
		.D(D), 
		.reset(reset), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		D = 0;
		reset = 0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		$monitor 
		reset=1;
		D<=0;
		#100 ; reset =0;
		D<=1;
		#100; reset=0;
		D<=1;
		#100; D<=0;
		
	end
      
endmodule

