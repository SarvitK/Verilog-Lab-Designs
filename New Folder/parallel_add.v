`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:59 10/17/2020 
// Design Name: 
// Module Name:    parallel_add 
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
module parallel_add(
    input [7:0] a,
	 input [7:0] b,
	 input cin,
    output [7:0] s,
	 output cyout
    );
	 wire t1,t2,t3,t4,t5,t6,t7;
	 
	 full_add_e F1 (a[0], b[0], cin, s[0], t1);
	 full_add_e F2 (a[1], b[1], t1, s[1], t2);
	 full_add_e F3 (a[2], b[2], t2, s[2], t3);
	 full_add_e F4 (a[3], b[3], t3, s[3], t4);
	 full_add_e F5 (a[4], b[4], t4, s[4], t5);
	 full_add_e F6 (a[5], b[5], t5, s[5], t6);
	 full_add_e F7 (a[6], b[6], t6, s[6], t7);
	 full_add_e F8 (a[7], b[7], t7, s[7], cyout);
	 
endmodule
