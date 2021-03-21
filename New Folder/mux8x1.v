`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:24 10/13/2020 
// Design Name: 
// Module Name:    mux8x1 
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
module mux8x1(
    input [7:0] it,
    input [2:0] sl,
    output ot
    );
	 //wire w0,w1 ;        //rules out 
	 wire [1:0]w;
	 
	 mux4to1 M1 (it[3:0], sl[1:0], w[0]);
	 mux4to1 M2 (it[7:4], sl[1:0], w[1]);
	 mux2to1 M3 (w[1:0], sl[2], ot);
	 //mux4to1 M3 (w1, w2, sl[2], ot);   //As at input bus was given in definition of mux4to1  
	 
endmodule
