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
	
	// ADC PCM1808 audio capture:
	input 			PCM1808_BCK,	// Audio-data bit-clock
	input 			PCM1808_DOUT,	// Serial audio-data
	output 			PCM1808_FMT,	// Auido-interface format select
	input 			PCM1808_LRCK,	// Audio-data latch-enable
	output	[1:0]	PCM1808_MD,		// Audio-interface mode select
	output 			PCM1808_SCKI,	// System clock
	
	// DAC PCM5102A audio player:
	output			PCM5102A_FLT,	// Filter select
	output 			PCM5102A_DEMP,	// De-emphasis control for 44.1-kHz sampling rate
	output 			PCM5102A_XSMT,	// Soft mute control
	output 			PCM5102A_FMT,	// Audio format selection
	output			PCM5102A_SCK,	// System clock input
	output			PCM5102A_BCK,	// Audio data bit clock input
	output			PCM5102A_DIN,	// Audio data input
	output			PCM5102A_LRCK	// Audio data word clock input
);

	// Common signals:
	reg	[19:0]	cnt_reset	= 0;
	reg 				GSR 			= 1'b0;

	// Clock manager:
	wire				clk_4_096MHz;
	wire				clk_6_144MHz;
	wire 				clk_100MHz;
	
	// Audio capture:
	wire 				tvalid_L_data;
	wire	[23:0]	L_data;
	wire				tvalid_R_data;
	wire	[23:0]	R_data;

	// Clock manager:
	ClockManager pll_clock_manager (
		// Clock in ports:
		.CLK_IN1(CLK_50M),			// IN
		// Clock out ports:
		.CLK_OUT1(clk_4_096MHz),	// OUT
		.CLK_OUT2(clk_6_144MHz),	// OUT
		.CLK_OUT3(clk_100MHz),		// OUT
		// Status and control signals:
		.RESET(1'b0),					// IN
		.LOCKED()      				// OUT
	);

	// Audio capture:
	ADC_PCM1808_controller audio_capture (
		// Common ports:
		.cmn_clk(clk_100MHz),				// 100 MHz
		.cmn_rst(GSR),							// Common reset
		.cmn_clk_adc(clk_6_144MHz),		// SCK 6.144 MHz

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
	
	// Audio player:
	DAC_PCM5102A_controller audio_player (
		// Common ports:
		.cmn_clk(clk_100MHz),				// 100 MHz
		.cmn_rst(GSR),							// Common reset
		.cmn_clk_dac_1(clk_4_096MHz),		// 4.096 MHz
		.cmn_clk_dac_2(clk_6_144MHz),		// 6.144 MHz
		
		// Input audio data:
		.tvalid_LC_audio(tvalid_L_data),
		.LC_audio(L_data),					// Left channel 24-bit data
		.tvalid_RC_audio(tvalid_R_data),
		.RC_audio(R_data),					// Right channel 24-bit data
		
		// PCM5102A ports:
		.pcm5102a_flt(PCM5102A_FLT),		// Filter select
		.pcm5102a_demp(PCM5102A_DEMP),	// De-emphasis control for 44.1-kHz sampling rate
		.pcm5102a_xsmt(PCM5102A_XSMT),	// Soft mute control
		.pcm5102a_fmt(PCM5102A_FMT),		// Audio format selection
		.pcm5102a_sck(PCM5102A_SCK),		// System clock input
		.pcm5102a_bck(PCM5102A_BCK),		// Audio data bit clock input
		.pcm5102a_din(PCM5102A_DIN),		// Audio data input
		.pcm5102a_lrck(PCM5102A_LRCK)		// Audio data word clock input
	);
	
	// Feature engineering:
	get_features #(
		.CHOOSE_CHANNEL(1'b0),				// 1'b0 - left channel, 1'b1 - right channel
		.PRE_EMPHASIS_COEF(32'hbf7851ec)	// Coefficient of preemphasis filter
	)
	logfbank_features (
		// Common ports:
		.get_features_clk(clk_100MHz),	// Common clock
		.get_features_bclk(PCM1808_BCK),	// Common bit clock
		.get_features_rst(GSR),				// Common reset
	
		// Input data:
		.tvalid_l_data(tvalid_L_data),	// Valid left channel data
		.l_data(L_data),						// Left channel data
		.tvalid_r_data(tvalid_R_data),	// Valid right channel data
		.r_data(R_data)						// Right channel data
	);

	// GLOBAL RESET = 1 ms:
	always@ (posedge clk_100MHz) begin
		//if (cnt_reset > 100000) begin
		if (cnt_reset > 10) begin
			GSR <= 1'b0;
		end
		else begin
			cnt_reset 	<= cnt_reset + 1;
			GSR			<= 1'b1;
		end
	end

endmodule
