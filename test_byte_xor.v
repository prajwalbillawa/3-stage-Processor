`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:28:47 08/22/2020
// Design Name:   byte_xor
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_byte_xor.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: byte_xor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_byte_xor;

	// Inputs
	reg [7:0] a;
	reg en;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	byte_xor uut (
		.a(a), 
		.en(en), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00000000;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b11111111;
		en = 1;
		#100;
		
		a = 8'b10011101;
		en = 0;
		#100;
		
		a = 8'b11000110;
		en = 1;
		#100;
		
		a = 8'b11110000;
		en = 1;
		#100;
	end
      
endmodule

