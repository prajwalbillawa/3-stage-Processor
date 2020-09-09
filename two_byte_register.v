`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:44 08/23/2020 
// Design Name: 
// Module Name:    two_byte_register 
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
module two_byte_register(
    input [15:0] d,
    input clk,
    input en,
    input res,
    output [15:0] q
    );
	 
	 byte_register u1(d[7:0],clk,en,res,q[7:0]);
	 byte_register u2(d[15:8],clk,en,res,q[15:8]);

endmodule
