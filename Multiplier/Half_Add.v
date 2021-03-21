`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:01 01/22/2021 
// Design Name: 
// Module Name:    Half_Add 
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
module Half_Add(
	input a,b,
	output reg carry, sum
    );
	always@(a,b)
		begin
			case({a,b})
				2'b00   : begin sum=0; carry=0; end
				2'b01   : begin sum=1; carry=0; end
				2'b10   : begin sum=1; carry=0; end
				default : begin sum=1; carry=1; end
			endcase
		end

endmodule
