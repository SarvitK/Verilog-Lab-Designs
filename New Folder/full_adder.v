`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:23 10/09/2020 
// Design Name: 
// Module Name:    full_adder 
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
module full_add_e( A,B,C,S,Cy);

	 input A,B,C;
	 output S,Cy;         // change the reg values when A , B changes
	 
	 assign S=A^B^C;
	 assign Cy=(A&B)|(B&C)|(C&B);
	 
endmodule
