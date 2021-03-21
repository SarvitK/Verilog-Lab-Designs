`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:42 01/22/2021 
// Design Name: 
// Module Name:    half_add 
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
module half_add(
    input a,b,
    output reg s,c
	 );
	 
	 always@(a,b)
	 if ( a==0 & b==0)
	  begin
	   s=0; c=0;
	  end
	 else if ( a==1 & b==1)
	  begin
	   s=0; c=1;
	  end
	 else
	  begin
	   s=1; c=0;
	  end
endmodule
