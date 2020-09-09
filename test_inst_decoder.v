`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:13:27 08/27/2020
// Design Name:   inst_decoder
// Module Name:   C:/Users/Dell/Documents/xilinx/cpu_v1/test_inst_decoder.v
// Project Name:  cpu_v1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inst_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_inst_decoder;

	// Inputs
	reg [7:0] ir;
	reg d;
	reg e;

	// Outputs
	wire loadf;
	wire addf;
	wire subf;
	wire bitandf;
	wire inpf;
	wire outpf;

	// Instantiate the Unit Under Test (UUT)
	inst_decoder uut (
		.ir(ir), 
		.d(d), 
		.e(e), 
		.loadf(loadf), 
		.addf(addf), 
		.subf(subf), 
		.bitandf(bitandf), 
		.inpf(inpf), 
		.outpf(outpf)
	);

	initial begin
		// Initialize Inputs
		ir = 8'b00000000;
		d=1;
		e=0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ir = 8'b00010000;
		d=1;
		e=1;
		#100;
		
		ir = 8'b00100000;
		d=0;
		e=1;
		#100;
		
		ir = 8'b00110000;
		d=1;
		e=1;
		#100;
		
		ir = 8'b01000000;
		d=1;
		e=0;
		#100;
		
		ir = 8'b01010000;
		d=0;
		e=1;
		#100;
		// #################################
		ir = 8'b00000000;
		d=0;
		e=0;

		#70;
        
		ir = 8'b00010000;
		d=0;
		e=0;
		#70;
		
		ir = 8'b00100000;
		d=0;
		e=0;
		#70;
		
		ir = 8'b00110000;
		d=1;
		e=1;
		#70;
		
		ir = 8'b01000000;
		d=0;
		e=0;
		#70;
		
		ir = 8'b01010000;
		d=0;
		e=1;
		#70;

	end 
endmodule

