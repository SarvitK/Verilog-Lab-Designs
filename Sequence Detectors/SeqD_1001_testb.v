`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:30:01 12/08/2020
// Design Name:   Seq_D_1001
// Module Name:   D:/Labs/CAD/Shubham Singh/Sequence_Detector/SeqD_1001_testb.v
// Project Name:  Sequence_Detector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Seq_D_1001
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SeqD_1001_testb;

	// Inputs
	reg clk;
	reg rstn;
	reg in;
	reg [1:0] l_dly;
	reg tb_in;
	

	// Outputs
	wire out;
	integer myseed;
	
	always #5 clk = ~clk;  

	// Instantiate the Unit Under Test (UUT)
	Seq_D_1001 uut (
		.clk(clk), 
		.rstn(rstn), 
		.in(in), 
		.out(out)
	);
	

	initial myseed = 15;
	initial begin
		// Initialize Inputs
		clk <= 0;
		rstn <= 0;
		in <= 0;

		// Wait 100 ns for global reset to finish
//   	#100;
        
		// Add stimulus here
		repeat (5) begin 
			@(posedge clk or negedge clk)
			in <= $random(myseed);
			$display("T:%d, in:%b, out:%b",$time,in,out);
			end
		#1000 $finish;	

	end
      
endmodule

