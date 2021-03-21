`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:49 10/18/2020 
// Design Name: 
// Module Name:    fourbit_mul 
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
module fourbit_mul(
    input [3:0] k,
    input [3:0] l,
    output [7:0] m
    );
	 wire reg [0:3] t1; wire reg [0:3] t3;
	 wire reg [0:3] t2; wire reg [0:3] t4;
	 wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17;
	 
	 //bitwise multipilication 
	 
	 genvar i;
	 begin
	 for(i=0;i<=3;i=i+1)
		 t1[i] = k[i]&l[0];                     
	 end                                        
	 for(i=0;i<=3;i=i+1)                        
		 t2[i] = k[i]&l[1];
	 end
	 for(i=0;i<=3;i=i+1)
		 t3[i] = k[i]&l[2];
	 end
	 for(i=0;i<=3;i=i+1)
		 t4[i] = k[i]&l[3];
	 end
	 end
	 //colum-wise addition of bits in array of partial multiplication 

	 
	 assign m[0]=t1[0];                                     // m[0]
	 
	 half_add   A1 (t1[1], t2[0], m[1], w1 );               // m[1]
	 
	 full_add_e A2 (w1, t1[2], t2[1], w2, w3 );
	 half_add   A3 (w2, t3[0], m[2], w4);                   // m[2]
	 half_add   A4 (w3, w4, w5, w6);
	 
	 full_add_e A5 (w5, t1[3], t2[2], w7, w8);
	 full_add_e A6 (w7, t3[1], t4[0], m[3], w9);            // m[3] 
	 full_add_e A7 (w6, w8, w9, w10, w11);
	 
	 full_add_e A8 (w10, t2[3], t3[2], w12, w13);
	 half_add   A9 (w12, t4[1], m[4], w14);                 // m[4]
	 full_add_e A10(w11, w14, w13, w15, w16);
	 
	 full_add_e A11(w15, t3[3], t4[2], m[5], w17);          // m[5]
	 half_add   A12(w16, w17, w18, w19);
	 
	 half_add   A13(w18, t4[3], m[6], w20);                 // m[6]
	 half_add   A14(w19, w20, m[7], w21);                   // m[7]
	 
	 

endmodule
