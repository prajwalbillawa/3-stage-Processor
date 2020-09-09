`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:54 08/22/2020
// Design Name:   byte_and
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_byte_and_xor_buff.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: byte_and
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_byte_and_xor_buff;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	byte_and uut (
		.a(a), 
		.b(b), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00001111;
		b = 8'b00001010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

