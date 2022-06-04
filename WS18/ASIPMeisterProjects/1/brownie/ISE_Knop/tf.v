`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:58:38 02/01/2019
// Design Name:   Debouncer
// Module Name:   /home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/tf.v
// Project Name:  ISE_Knop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] dataSource;

	// Outputs
	wire [3:0] dataDebounced;

	// Instantiate the Unit Under Test (UUT)
	Debouncer uut (
		.clk(clk), 
		.reset(reset), 
		.dataSource(dataSource), 
		.dataDebounced(dataDebounced)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		dataSource = 0;

		// Wait 100 ns for global reset to finish
		#100; 
		reset = 1;
		#10;
		reset = 0;
		#100;
		
		dataSource = 1;
      #2000000; //=2ms with maxCount      :     integer := 100000=>1ms
		dataSource = 2;
      #2000000;
		dataSource = 3;
      #2000000;
		dataSource = 4;
      #2000000;
		dataSource = 5;
      #2000000;
		dataSource = 6;
      #2000000;
		dataSource = 7;
      #2000000;
		dataSource = 8;
      #2000000;
		dataSource = 9;
      #2000000;
		dataSource = 10;
      #2000000;
		dataSource = 11;
      #2000000;
		dataSource = 12;
      #2000000;
		dataSource = 13;
      #2000000;
		dataSource = 14;
      #2000000;
		dataSource = 15;
      #20;
		dataSource = 1;
      #40;
		dataSource = 3;
      #200;

		// Add stimulus here

	end
   
	always
	begin
	#5;
	clk = 1;
	#5;
	clk = 0;
	end
endmodule

