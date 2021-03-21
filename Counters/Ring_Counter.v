`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:56:51 01/23/2021 
// Design Name: 
// Module Name:    Ring_Counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Ring_Counter(clk, init, count);
		input clk, init;
		output reg [7:0] count;
		always @(posedge clk)
			begin
				if(init) count = 8'b10000000;
				else
					      count ={count[6:0],count[7]};
			end		
endmodule
