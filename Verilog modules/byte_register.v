`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:13 08/23/2020 
// Design Name: 
// Module Name:    byte_register 
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
module byte_register(
    input [7:0] d,
    input clk,
    input en,
    input res,
    output [7:0] q
    );
	 
	 register_half u1(d[3:0],clk,en,res,q[3:0]);
	 register_half u2(d[7:4],clk,en,res,q[7:4]);

endmodule
