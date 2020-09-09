`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:27:20 08/23/2020
// Design Name:   dff
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_dff.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dff;

	// Inputs
	reg d;
	reg res;
	reg clk;
	reg en;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.res(res), 
		.clk(clk), 
		.en(en), 
		.q(q)
	);
	
	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		d <= 0;
		res = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		 en = 1;
		 res = 0;
		 d <= 0;
		 #100;
		 
		 d <= 1;
		 #100
		 
		 en = 0;
		 d <= 0;
		 #100;
		 
		 
		 d <= 1;
		 res = 1;
		 
		 #100
		  en = 1;
		  res= 0;
	end
      
endmodule

