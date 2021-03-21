`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:38 01/22/2021 
// Design Name: 
// Module Name:    Full_Add 
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
module Full_Add(a,b,c,carry, sum
    );
	 
	 output reg sum, carry;
	 input a,b,c;
	 
	 always @(a,b,c)
	 
	 begin 
		case ({a,b,c})
			3'b000  : begin sum=0; carry=0; end
			3'b001  : begin sum=1; carry=0; end
			3'b010  : begin sum=1; carry=0; end
			3'b011  : begin sum=0; carry=1; end
			3'b100  : begin sum=1; carry=0; end
			3'b101  : begin sum=0; carry=1; end
			3'b110  : begin sum=0; carry=1; end
			default : begin sum=1; carry=1; end
			
		endcase
	 end
		
endmodule
