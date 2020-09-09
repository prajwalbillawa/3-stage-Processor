`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:33:22 08/22/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [7:0] a,
    input [7:0] b,
    input s0,
    input s1,
    input s2,
    input s3,
    input s4,
    output [7:0] o,
    output cout
    );
	 
	 wire w1;
	 wire [7:0] b1,b2,b3,b4,b5;
	 
	 not(w1,s4);
	 byte_buff u1(w1,b1);
	 byte_xor u2(b,s3,b2);
	 byte_and u3(b1,b2,b3);
	 byte_and u4(a,b,b4);
	 ripple_carry_adder_8 u5(a,b3,s2,b5,cout);
	 byte_mux_4_to_1 u6(b5,b4,a,b,s0,s1,o);

endmodule
