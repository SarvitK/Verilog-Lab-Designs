`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:22 03/12/2021 
// Design Name: 
// Module Name:    seqD110and101 
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
module seqD110and101(
    input x,clk,rstn,
    output reg y
    );
	 parameter s1=3'b000, s2=3'b101 , s3=3'b100, s4=3'b011, s5=3'b001 ;
	 
	 reg [3:0] present_state, next_state;
	 
//	 assign y = present_state==s5 ? 1:0;
	 
	 always@(present_state,x)
		case(present_state)
			s1 : y=0;
			s2 : y=0;
			s3 : y=0;
			s4 : y=0;
	      s5 : y=1;
		endcase
		
	 always@(posedge clk, posedge rstn)
		begin
			if(rstn) present_state<= s1;
			else     present_state<= next_state;
		end
		
	 always@(present_state,x)
		begin
			case(present_state)
				s1 : begin if (x) next_state = s2; else next_state = s1; end
				s2 : begin if (x) next_state = s4; else next_state = s3; end
				s3 : begin if (x) next_state = s5; else next_state = s1; end
				s4 : begin if (x) next_state = s4; else next_state = s5; end
				s5 : begin if (x) next_state = s1; else next_state = s1; end
				default : next_state = s1;
			endcase
		end

endmodule
