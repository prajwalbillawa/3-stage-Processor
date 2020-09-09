`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:35 08/22/2020 
// Design Name: 
// Module Name:    byte_buff 
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
module byte_buff(
    input a,
    output [7:0] o
    );
	 buf(o[0],a);
	 buf(o[1],a);
	 buf(o[2],a);
	 buf(o[3],a);
	 
	 buf(o[4],a);
	 buf(o[5],a);
	 buf(o[6],a);
	 buf(o[7],a);

endmodule
