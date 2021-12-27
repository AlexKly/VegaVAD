`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:08 12/27/2021 
// Design Name: 
// Module Name:    VegaVAD_main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VegaVAD_main(
	// External clock:
	input 			CLK_50M,			// Core clock
	
	// ADC PCM1808:
	input 			PCM1808_BCK,	// Audio-data bit-clock
	input 			PCM1808_DOUT,	// Serial audio-data
	output 			PCM1808_FMT,	// Auido-interface format select
	input 			PCM1808_LRCK,	// Audio-data latch-enable
	output	[1:0]	PCM1808_MD,		// Audio-interface mode select
	output 			PCM1808_SCKI	// System clock
);

	// Common signals:
	reg	[16:0]	cnt_reset	= 0;
	reg 				GSR 			= 1'b0;

	// Clock manager:
	wire 				clk_100MHz;
	
	// Audio capture:
	wire 				tvalid_L_data;
	wire	[23:0]	L_data;
	wire				tvalid_R_data;
	wire	[23:0]	R_data;

	// Clock manager:
	ClockManager pll_clock_manager (
		// Clock in ports:
		.CLK_IN1(CLK_50M),		// IN
		// Clock out ports:
		.CLK_OUT1(clk_100MHz),	// OUT
		// Status and control signals:
		.RESET(1'b0),				// IN
		.LOCKED()      			// OUT
	);

	// Audio capture:
	ADC_PCM1808_controller audio_capture (
		// Common ports:
		.cmn_clk(clk_100MHz),				// 100 MHz
		.cmn_rst(GSR),							// Common reset

		// PCM1808 ports:
		.pcm1808_bck(PCM1808_BCK),			// Audio-data bit-clock
		.pcm1808_dout(PCM1808_DOUT),		// Serial audio-data
		.pcm1808_fmt(PCM1808_FMT),			// Auido-interface format select
		.pcm1808_lrck(PCM1808_LRCK),		// Audio-data latch-enable
		.pcm1808_md(PCM1808_MD),			// Audio-interface mode select
		.pcm1808_scki(PCM1808_SCKI),		// System clock
	
		// Output audio data:
		.tvalid_LC_audio(tvalid_L_data),	// Valid for left channel audio 24-bit
		.LC_audio(L_data),					// Left channel audio 24-bit
		.tvalid_RC_audio(tvalid_R_data),	// Valid for right channel audio 24-bit
		.RC_audio(R_data)						// Right channel audio 24-bit
	);
	
	DAC_PCM5102A_controller audio_player (
	);

	// GLOBAL RESET = 1 ms:
	always@ (posedge clk_100MHz) begin
		if (cnt_reset > 100000) begin
			GSR <= 1'b0;
		end
		else begin
			cnt_reset 	<= cnt_reset + 1;
			GSR			<= 1'b1;
		end
	end

endmodule
