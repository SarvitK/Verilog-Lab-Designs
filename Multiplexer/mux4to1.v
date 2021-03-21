`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:41 12/07/2020 
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
    input [3:0] in,
    input [1:0] sel,
    output out
    );
	 wire [1:0] t;
	 
	 mux2to1 M0(in[1:0], sel[0], t[0]);
	 mux2to1 M1(in[3:2], sel[0], t[1]);
	 mux2to1 M2(t, sel[1], out);

endmodule
