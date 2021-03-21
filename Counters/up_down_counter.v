`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:02 12/08/2020 
// Design Name: 
// Module Name:    up_down_counter 
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
module up_down_counter(
    input mode, clr,clk,ld,
    input [3:0] d_in,
    output reg [3:0] count
    );
	 always @ (posedge clk)
		if(ld)          count = d_in;
		else if (clr)   count = 4'b0000;
		else if (mode)  count = count + 4'b0001;
		else            count = count + 4'b1110 + 4'b0001;
		
endmodule
