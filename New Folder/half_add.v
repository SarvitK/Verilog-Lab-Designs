`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:55 10/09/2020 
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
module half_add(a,b,s,cy
    );
	 input a,b;
	 output s,cy;
	 
	 assign s=a^b;
	 assign cy=a&b;
	
endmodule
