`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:28 12/08/2020 
// Design Name: 
// Module Name:    Seq_D_1001 
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
module Seq_D_1001(
    input clk, rstn, in,
    output out
    );
	 parameter IDLE=3'b001, S1=4'b010, S10=3'b011, S100=3'b100, S1001=3'b101;
	 
	 reg [3:0] curr_state, next_state;
	 
	 assign out = (curr_state == S1001 ? 1:0);
	 
	 always @ (posedge clk)
		begin
			if(rstn) curr_state <= IDLE;
			else     curr_state <= next_state;
		end
		
	 always @ (curr_state,in)
		begin
		
			case (curr_state)
				IDLE : begin if (in) next_state = S1; else next_state = IDLE; end
				S1   : begin if (in) next_state = IDLE; else next_state = S10; end 
				S10  : begin if (in) next_state = IDLE; else next_state = S100; end
				S100 : begin if (in) next_state = S1001; else next_state = IDLE; end
				default: next_state = IDLE;
			endcase
		end
				

endmodule
