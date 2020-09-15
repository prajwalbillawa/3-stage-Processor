`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:30 08/27/2020 
// Design Name: 
// Module Name:    joiner 
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
module joiner(
    input [7:0] low,
    input [7:0] high,
    output [15:0] o
    );
	 
	 assign o = {high[7:0],low[7:0]};
	 
endmodule
