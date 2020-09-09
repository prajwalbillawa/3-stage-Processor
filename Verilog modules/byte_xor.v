`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:35 08/22/2020 
// Design Name: 
// Module Name:    byte_xor 
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
module byte_xor(
    input [7:0] a,
    input en,
    output [7:0] o
    );
	xor(o[0],a[0],en);
	xor(o[1],a[1],en);
	xor(o[2],a[2],en);
	xor(o[3],a[3],en);
	
	xor(o[4],a[4],en);
	xor(o[5],a[5],en);
	xor(o[6],a[6],en);
	xor(o[7],a[7],en);



endmodule
