`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:58 08/22/2020 
// Design Name: 
// Module Name:    byte_and 
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
module byte_and(
    input [7:0] a,
    input [7:0] b,
    output [7:0] o
    );
	 
	and(o[0],a[0],b[0]);
	and(o[1],a[1],b[1]);
	and(o[2],a[2],b[2]);
	and(o[3],a[3],b[3]);
	
	and(o[4],a[4],b[4]);
	and(o[5],a[5],b[5]);
	and(o[6],a[6],b[6]);
	and(o[7],a[7],b[7]);

endmodule
