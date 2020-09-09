`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:11 08/23/2020 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input d,
    input res,
    input clk,
    input en,
    output reg q
    );
	 
	 always @(posedge clk or posedge res) begin
		if(res == 1'b1)
			q <= 1'b0;
		else if(en)
			q <= d;
	end
	
endmodule
