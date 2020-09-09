`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:21:02 08/28/2020
// Design Name:   mem
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_mem.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mem;

	// Inputs
	reg [15:0] din;
	reg [7:0] addr;
	reg we;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	mem uut (
		.din(din), 
		.addr(addr), 
		.we(we), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		din = 16'h0000;
		addr = 16'h0000;
		we = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		din = 16'hFFFF;
		we=1;
		addr = 16'h0007;
		#100;
		we=0;
		addr=7;
		
	end
      
endmodule

