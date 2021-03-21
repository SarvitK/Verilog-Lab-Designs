`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:11 12/08/2020
// Design Name:   modN_counter
// Module Name:   D:/Labs/CAD/Shubham Singh/Counter/modN_count_testb.v
// Project Name:  Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: modN_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mod10_count_testb;

	// Inputs
	reg clk;
	reg rstn;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	modN_counter uut (
		.clk(clk), 
		.rstn(rstn), 
		.out(out)
	);
	always #10  clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rstn = 0;
		//$monitor ($time "rstn=%b, out=%b", rstn, out);
		$monitor ("T=%t, rstn=%b, out=%b", $time, rstn, out);
		// Wait 100 ns for global reset to finish
	//	#100
		// Add stimulus here

		repeat(2) @ (posedge clk);
        rstn<=1;
		repeat(20)@ (posedge clk);
		 $finish;
	 end
endmodule

