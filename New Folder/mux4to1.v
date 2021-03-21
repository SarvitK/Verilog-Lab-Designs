`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:19 10/13/2020 
// Design Name: 
// Module Name:    mux4to1 
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
module mux4to1(
    input [3:0] i,
    input [1:0] s,
    output f
    );
	 wire [1:0] t;
	 
	 mux2to1 M1(i[1:0], s[0], t[0]);
	 mux2to1 M2(i[3:2], s[0], t[1]);
	 mux2to1 M3(t[1:0], s[1], f);

endmodule
