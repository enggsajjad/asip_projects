`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:26:47 02/01/2019
// Design Name:   DCM_100
// Module Name:   /home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/tfDCM.v
// Project Name:  ISE_Knop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DCM_100
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tfDCM;

	// Inputs
	reg CLKIN_IN;
	reg RST_IN;

	// Outputs
	wire CLKIN_IBUFG_OUT;
	wire CLKOUT0_OUT;
	wire CLKOUT1_OUT;
	wire CLKOUT2_OUT;
	wire CLKOUT3_OUT;
	wire CLKOUT4_OUT;
	wire CLKOUT5_OUT;
	wire LOCKED_OUT;

	// Instantiate the Unit Under Test (UUT)
	DCM_100 uut (
		.CLKIN_IN(CLKIN_IN), 
		.RST_IN(RST_IN), 
		.CLKIN_IBUFG_OUT(CLKIN_IBUFG_OUT), 
		.CLKOUT0_OUT(CLKOUT0_OUT), 
		.CLKOUT1_OUT(CLKOUT1_OUT), 
		.CLKOUT2_OUT(CLKOUT2_OUT), 
		.CLKOUT3_OUT(CLKOUT3_OUT), 
		.CLKOUT4_OUT(CLKOUT4_OUT), 
		.CLKOUT5_OUT(CLKOUT5_OUT), 
		.LOCKED_OUT(LOCKED_OUT)
	);

	initial begin
		// Initialize Inputs
		CLKIN_IN = 0;
		RST_IN = 0;

		// Wait 100 ns for global reset to finish
		// Wait 100 ns for global reset to finish
		#100; 
		reset = 1;
		#10;
		reset = 0;
		#100;
        
		// Add stimulus here

	end
    
	always
	begin
	#5;
	CLKIN_IN = 1;
	#5;
	CLKIN_IN = 0;
	end     
endmodule

