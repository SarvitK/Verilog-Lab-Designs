`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:26 10/18/2020 
// Design Name: 
// Module Name:    twoxtwo_mul 
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
module twoxtwo_mul(
    input [1:0] a,
    input [1:0] b,
    output [3:0] out
    );
	 
	 wire t1,t2,t3;
	 
	 assign out[0]=a[0]&b[0];
	 
	 assign t1=a[0]&b[1];
	 assign t2=a[1]&b[0];
	 
	 assign t3=a[1]&b[1];
	 
	 half_add A1 (t1,t2,out[1],t4);
	 half_add A2 (t3,t4,out[2],out[3]);
	 
endmodule
