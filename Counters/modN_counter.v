`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:35 12/08/2020 
// Design Name: 
// Module Name:    modN_counter 
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
module mod10_counter
//	#(parameter N=10,
//	  parameter width=4)
	 (
	 input clk,rstn,
	 output reg [3:0] out
	 );
	
	
	always @ (posedge clk)
		begin 
			if (!rstn) out = 4'b0000;
			else
				begin 
					if (out == 4'b1001)
						out = 4'b0000;
					else
						out = out+4'b0001;
				end
		end
			
endmodule
