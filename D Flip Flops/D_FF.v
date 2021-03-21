`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:41 12/01/2020 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(
    input clk,
	 input D,
//	 input reset,
    output reg Q
    
    );
	 
	 always @ (posedge clk)
	 begin
//		if(reset==1'b1)
//			Q <= 1'b0;
//		else
			Q <= D;                  // Procedural assignment to a non-register Q is not permitted, 
	 end                           // left-hand side should be reg/integer/time/genvar 
 	

	
endmodule






/*module level_sensitive_latch(D, Q, En);
	input D, En;
	output Q;
	
	assign Q= En?D:Q;
	
endmodule
*/