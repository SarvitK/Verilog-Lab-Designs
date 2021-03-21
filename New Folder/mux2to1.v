`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:13 10/12/2020 
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
	 
	 not_gate G1(.a(sel), .b(t3));
	 and_gate G2(.a(in[0]), .b(t3),  .c(t1));
	 and_gate G3(.a(in[1]), .b(sel), .c(t2));      // .b(~sel) didn't worked,a not gate added to complement sel 
	 or_gate  G4(.a(t1), .b(t2), .c(out));

endmodule
