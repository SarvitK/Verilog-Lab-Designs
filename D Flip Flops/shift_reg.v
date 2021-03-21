`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:55 02/12/2021 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
    input in,cl,
    output out
    );
	 
	 wire w1, w2;
//	 assign res=1'b1;
	 
	 D_FF D1 (cl, in,/* res,*/ w1);
	 D_FF D2 (cl, w1,/* res, */w2);
	 D_FF D3 (cl, w2,/* res, */out);
	 
endmodule
