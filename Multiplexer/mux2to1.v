`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:06 12/01/2020 
// Design Name: 
// Module Name:    mux2to1 
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
module mux2to1(
    input [1:0] in,
    input sel,
    output out
    );
	 wire t1, t2, t3;
	 
	 not G1 (t1, sel);
	 and G2 (t2, in[0], t1);
	 and G3 (t3, in[1], sel);
	 or  G4 (out, t2, t3);
	 
endmodule
