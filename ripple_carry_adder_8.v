`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:39 08/22/2020 
// Design Name: 
// Module Name:    ripple_carry_adder_8 
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
module ripple_carry_adder_8(
    input [7:0] a,
    input [7:0] b,
    input ci,
    output [7:0] o,
    output co
    );
	 
	 wire w1,w2,w3,w4,w5,w6,w7;
	 
	 full_adder u1(a[0],b[0],ci,o[0],w1);
	 full_adder u2(a[1],b[1],w1,o[1],w2);
	 full_adder u3(a[2],b[2],w2,o[2],w3);
	 full_adder u4(a[3],b[3],w3,o[3],w4);
	 
	 full_adder u5(a[4],b[4],w4,o[4],w5);
	 full_adder u6(a[5],b[5],w5,o[5],w6);
	 full_adder u7(a[6],b[6],w6,o[6],w7);
	 full_adder u8(a[7],b[7],w7,o[7],co);


endmodule
