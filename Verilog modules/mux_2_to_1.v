`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:00 08/22/2020 
// Design Name: 
// Module Name:    mux_2_to_1 
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
module mux_2_to_1(
    input i0,
    input i1,
    input s0,
    output reg o
    );
	
	always @(i0 or i1 or s0) begin
		if(s0)
			o = i1;
		else
			o = i0;
	end

endmodule
