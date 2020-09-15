`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:36 08/23/2020 
// Design Name: 
// Module Name:    register_half 
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
module register_half(
    input [3:0] d,
    input clk,
    input en,
    input res,
    output [3:0] q
    );
	 
	 dff u1(d[0],res,clk,en,q[0]);
	 dff u2(d[1],res,clk,en,q[1]);
	 dff u3(d[2],res,clk,en,q[2]);
	 dff u4(d[3],res,clk,en,q[3]);

endmodule
