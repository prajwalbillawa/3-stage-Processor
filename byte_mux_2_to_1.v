`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:13 08/22/2020 
// Design Name: 
// Module Name:    byte_mux_2_to_1 
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
module byte_mux_2_to_1(
    input [7:0] a,
    input [7:0] b,
    input s,
    output [7:0] o
    );
	 
	 mux_2_to_1 u1(a[0],b[0],s,o[0]);
	 mux_2_to_1 u2(a[1],b[1],s,o[1]);
	 mux_2_to_1 u3(a[2],b[2],s,o[2]);
	 mux_2_to_1 u4(a[3],b[3],s,o[3]);
	 
	 mux_2_to_1 u5(a[4],b[4],s,o[4]);
	 mux_2_to_1 u6(a[5],b[5],s,o[5]);
	 mux_2_to_1 u7(a[6],b[6],s,o[6]);
	 mux_2_to_1 u8(a[7],b[7],s,o[7]);


endmodule
