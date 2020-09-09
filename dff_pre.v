`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:31 08/25/2020 
// Design Name: 
// Module Name:    dff_pre 
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
module dff_pre(
    input d,
    input pre,
    input en,
    input clk,
    output reg q
    );
	 
	 always @(posedge clk or posedge pre) begin
		if(pre == 1'b1)
			q <= 1'b1;
		else if(en)
			q <= d;
	end
	
endmodule
