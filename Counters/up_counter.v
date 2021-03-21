`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:47 12/07/2020 
// Design Name: 
// Module Name:    up_counter 
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
module up_counter(
    input clk,rst,
    output reg [3:0] count
    );

	always @(posedge clk)
		begin
			if(rst)
				count =4'b0000;
			else
				count = count+4'b0001;
		end

endmodule
