`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:25 01/22/2021 
// Design Name: 
// Module Name:    priorityencoder 
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
module priorityencoder(
			input [3:0] D,
			output A,B,V
    );
			wire w1,w2;
			
			assign w1= ~D[2];
			assign w2=w1 & D[1];
			assign B= D[3] | w2;
			assign A= D[2] | D[3];
			assign V= D[0] | D[1] | D[2] | D[3];
			
endmodule
