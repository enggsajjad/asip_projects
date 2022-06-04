`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:25 02/04/2019
// Design Name:   dlx_toplevel
// Module Name:   /home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/tf2.v
// Project Name:  ISE_Knop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dlx_toplevel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf2;

	// Inputs
	reg reset;
	reg clk_in;
	reg [3:0] knop;

	// Outputs
	wire [3:0] led_buildin;
	wire [3:0] led_buildin2;
	wire [2:0] led_user;

	// Instantiate the Unit Under Test (UUT)
	dlx_toplevel uut (
		.reset(reset), 
		.clk_in(clk_in), 
		.led_buildin(led_buildin), 
		.led_buildin2(led_buildin2), 
		.led_user(led_user), 
		.knop(knop)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk_in = 0;
		knop = 0;

		// Wait 100 ns for global reset to finish
		#100; 
		reset = 1;
		#10;
		reset = 0;
		#100;
		
		knop = 1;
      #2000000;//2000000ns =2ms with maxCount      :     integer := 100000=>1ms
		knop = 2;
      #2000000;
		knop = 3;
      #2000000;
		knop = 4;
      #2000000;
		knop = 5;
      #2000000;
		knop = 6;
      #2000000;
		knop = 7;
      #2000000;
		knop = 8;
      #2000000;
		knop = 9;
      #2000000;
		knop = 10;
      #2000000;
		knop = 11;
      #2000000;
		knop = 12;
      #2000000;
		knop = 13;
      #2000000;
		knop = 14;
      #2000000;
		knop = 15;
      #20;
		knop = 1;
      #40;
		knop = 3;
      #200;

        
		// Add stimulus here

	end
 	always
	begin
	#5;//5ns
	clk_in = 1;
	#5;
	clk_in = 0;
	end     
endmodule

