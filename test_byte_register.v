`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:25:15 08/23/2020
// Design Name:   byte_register
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_byte_register.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: byte_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_byte_register;

	// Inputs
	reg [7:0] d;
	reg clk;
	reg en;
	reg res;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	byte_register uut (
		.d(d), 
		.clk(clk), 
		.en(en), 
		.res(res), 
		.q(q)
	);

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		d <= 8'b11111111;
		res = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 en = 1;
		 res = 0;
		 d <= 8'b00001111;
		 #100;
		 
		 d <= 8'b10101010;
		 #100
		 
		 en = 0;
		 d <= 8'b10101010;
		 #100;
		 
		 en = 1;
		 d <= 8'b10101010;
		 res = 1;
		  
	end
      
endmodule
