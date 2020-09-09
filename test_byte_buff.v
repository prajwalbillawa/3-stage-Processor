`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:44 08/22/2020
// Design Name:   byte_buff
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_byte_buff.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: byte_buff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_byte_buff;

	// Inputs
	reg a;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	byte_buff uut (
		.a(a), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 0;
	end
      
endmodule

