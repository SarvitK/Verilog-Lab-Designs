`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:52 01/22/2021 
// Design Name: 
// Module Name:    multplier4bit 
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
module Multiplier (
					input[3:0] X,
	            input[3:0] Y,
					output[7:0] P
						);
					 wire[3:0] C1;
					 wire[3:0] C2;
					 wire[3:0] C3;
					 wire[3:0] S1;
					 wire[3:0] S2;
					 wire[3:0] S3;
					 wire[3:0] XY0;
					 wire[3:0] XY1;
					 wire[3:0] XY2;
					 wire[3:0] XY3;
					 assign XY0[0] = X[0] & Y[0] ;
					 assign XY1[0] = X[0] & Y[1] ;
					 assign XY0[1] = X[1] & Y[0] ;
					 assign XY1[1] = X[1] & Y[1] ;
					 assign XY0[2] = X[2] & Y[0] ;
					 assign XY1[2] = X[2] & Y[1] ;
					 assign XY0[3] = X[3] & Y[0] ;
					 assign XY1[3] = X[3] & Y[1] ;
					 assign XY2[0] = X[0] & Y[2] ;
					 assign XY3[0] = X[0] & Y[3] ;
					 assign XY2[1] = X[1] & Y[2] ;
					 assign XY3[1] = X[1] & Y[3] ;
					 assign XY2[2] = X[2] & Y[2] ;
					 assign XY3[2] = X[2] & Y[3] ;
					 assign XY2[3] = X[3] & Y[2] ;
					 assign XY3[3] = X[3] & Y[3] ;
					 Full_Add FA1 (XY0[2], XY1[1], C1[0], C1[1], S1[1]);
					 Full_Add FA2 (XY0[3], XY1[2], C1[1], C1[2], S1[2]);
					 Full_Add FA3 (S1[2], XY2[1], C2[0], C2[1], S2[1]);
					 Full_Add FA4 (S1[3], XY2[2], C2[1], C2[2], S2[2]);
					 Full_Add FA5 (C1[3], XY2[3], C2[2], C2[3], S2[3]);
					 Full_Add FA6 (S2[2], XY3[1], C3[0], C3[1], S3[1]);
					 Full_Add FA7 (S2[3], XY3[2], C3[1], C3[2], S3[2]);
					 Full_Add FA8 (C2[3], XY3[3], C3[2], C3[3], S3[3]);
					 Half_Add HA1 (XY0[1], XY1[0], C1[0], S1[0]);
					 Half_Add HA2 (XY1[3], C1[2], C1[3], S1[3]);
					 Half_Add HA3 (S1[1], XY2[0], C2[0], S2[0]);
					 Half_Add HA4 (S2[1], XY3[0], C3[0], S3[0]);

					 assign P[0] = XY0[0] ;
					 assign P[1] = S1[0] ;
					 assign P[2] = S2[0] ;
					 assign P[3] = S3[0] ;
					 assign P[4] = S3[1] ;
					 assign P[5] = S3[2] ;
					 assign P[6] = S3[3] ;
					 assign P[7] = C3[3] ;
endmodule
