`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:57 01/22/2021 
// Design Name: 
// Module Name:    mux16to1 
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
module mux16to1(
    input [15:0] in,
    input [3:0] sel,
    output out
    );
	 wire [3:0] t;
	 
	 mux4to1 M0(in[3:0],   sel[1:0], t[0]);
	 mux4to1 M1(in[7:4],   sel[1:0], t[1]);
	 mux4to1 M2(in[11:8],  sel[1:0], t[2]);
	 mux4to1 M3(in[15:12], sel[1:0], t[3]);
	 mux4to1 M4(t, sel[3:2], out);

endmodule
