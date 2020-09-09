`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:36 08/22/2020
// Design Name:   ripple_carry_adder_8
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_ripple_carry_adder_8.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ripple_carry_adder_8;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg ci;

	// Outputs
	wire [7:0] o;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder_8 uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.o(o), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00000000;
		b = 8'b11111111;
		ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b01000100;
		b = 8'b00100101;
		ci = 0;
		#100;
		
		a = 8'b10011001;
		b = 8'b10000011;
		ci = 1;
		#100;
		
		a = 8'b11100010;
		b = 8'b00011011;
		ci = 0;
		#100;
		
		a = 8'b01101100;
		b = 8'b00001111;
		ci = 1;
		#100;
		
		a = 8'b10111100;
		b = 8'b11000001;
		ci = 1;
		#100;
	end
      
endmodule

