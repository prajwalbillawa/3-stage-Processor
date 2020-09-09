`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:35 08/22/2020 
// Design Name: 
// Module Name:    byte_mux_4_to_1 
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
module byte_mux_4_to_1(
    input [7:0] i0,
    input [7:0] i1,
    input [7:0] i2,
    input [7:0] i3,
    input s0,
    input s1,
    output [7:0] o
    );
	 
	 wire [7:0] w1,w2;
	 
	 byte_mux_2_to_1 u1(i0,i1,s0,w1);
	 byte_mux_2_to_1 u2(i2,i3,s0,w2);
	 byte_mux_2_to_1 u3(w1,w2,s1,o);


endmodule
