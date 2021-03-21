`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:59 10/20/2020
// Design Name:   mux8x1
// Module Name:   D:/Labs/CAD/Shubham/mux8x1_test.v
// Project Name:  Shubham
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8x1_test;

	// Inputs
	reg [7:0] it;
	reg [3:0] sl;

	// Outputs
	wire ot;

	// Instantiate the Unit Under Test (UUT)
	mux8x1 uut (
		.it(it), 
		.sl(sl), 
		.ot(ot)
	);

	initial begin
		// Initialize Inputs
		it = 8'b00000000;
		sl = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		it= 8'b00001111;
		sl= 3'b100;
		
		#100
		it= 8'b00001111;
		sl= 3'b101;
		
		#100
		it= 8'b00001111;
		sl= 3'b110;
		
		#100
		it= 8'b00001111;
		sl= 3'b111;
		
		#100 
		it= 8'b00001111;
		sl= 3'b000;
		
		#100
		it= 8'b00001111;
		sl= 3'b011;
		
		#100
		it= 8'b01010101;
		sl= 3'b010;
		
		#100
		
		$finish;
		
	end
      
endmodule

