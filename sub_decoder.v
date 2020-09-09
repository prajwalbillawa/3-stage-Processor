`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:18 08/27/2020 
// Design Name: 
// Module Name:    sub_decoder 
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
module sub_decoder(
    input [7:0] a,
    output load,
    output add,
    output sub,
    output bitand,
    output inp,
    output out
    );
	 
	 wire w4,w5,w6,w7;
	 not(w4,a[4]);
	 not(w5,a[5]);
	 not(w6,a[6]);
	 not(w7,a[7]);
	 and(load,w7,w6,w5,w4);
	 and(add,w7,w6,w5,a[4]);
	 and(sub,w7,w6,a[5],w4);
	 and(bitand,w7,w6,a[5],a[4]);
	 and(inp,w7,a[6],w5,w4);
	 and(out,w7,a[6],w5,a[4]);


endmodule
