`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:33:51 08/22/2020
// Design Name:   byte_mux_2_to_1
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_byte_mux_2_to_1.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: byte_mux_2_to_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_byte_mux_2_to_1;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg s;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	byte_mux_2_to_1 uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b01000100;
		b = 8'b00100101;
		s = 0;
		#100;
		
		a = 8'b10011001;
		b = 8'b10000011;
		s = 1;
		#100;
		
		a = 8'b11100010;
		b = 8'b00011011;
		s = 0;
		#100;
		
		a = 8'b01101100;
		b = 8'b00001111;
		s = 1;
		#100;
		
		a = 8'b10111100;
		b = 8'b11000001;
		s = 1;
		#100;

	end
      
endmodule

