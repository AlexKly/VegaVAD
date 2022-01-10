`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:23 12/27/2021 
// Design Name: 
// Module Name:    ADC_PCM1808_controller 
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
module ADC_PCM1808_controller(
	// Common ports:
	input 				cmn_clk,				// 100 MHz
	input					cmn_rst,				// Common reset
	input					cmn_clk_adc,		// SCK 6.144 MHz

	// PCM1808 ports:
	input 				pcm1808_bck,		// Audio-data bit-clock
	input 				pcm1808_dout,		// Serial audio-data
	output 				pcm1808_fmt,		// Auido-interface format select
	input 				pcm1808_lrck,		// Audio-data latch-enable
	output	[1:0]		pcm1808_md,			// Audio-interface mode select
	output 				pcm1808_scki,		// System clock
	
	// Output audio data:
	output 				tvalid_LC_audio,	// Valid for left channel audio 24-bit
	output 	[23:0]	LC_audio,			// Left channel audio 24-bit
	output 				tvalid_RC_audio,	// Valid for right channel audio 24-bit
	output 	[23:0] 	RC_audio				// Right channel audio 24-bit
);
	
	// Capturing of audio-data:
	reg 			tvalid_left_channel_audio_data 	= 1'b0;
	reg 			tvalid_right_channel_audio_data	= 1'b0;
	reg [23:0] 	left_channel_audio_data				= {24{1'b0}};
	reg [23:0] 	right_channel_audio_data			= {24{1'b0}};
	reg [4:0]	cnt_left_channel_audio_bits 		= 0;
	reg [4:0]	cnt_right_channel_audio_bits 		= 0;
	
	// Receiving audio data based on I2C interface:
	// Left channel:
	always@ (posedge pcm1808_bck) begin
		if (cmn_rst) begin
			tvalid_left_channel_audio_data			<= 1'b0;
			left_channel_audio_data 					<= {24{1'b0}};
			cnt_left_channel_audio_bits 				<= 0;
		end
		else begin
			if (!pcm1808_lrck) begin
				left_channel_audio_data[0] 			<= pcm1808_dout;
				left_channel_audio_data[23:1] 		<= left_channel_audio_data[22:0];
				
				cnt_left_channel_audio_bits 			<= cnt_left_channel_audio_bits + 1;
				if (cnt_left_channel_audio_bits == 23) begin
					tvalid_left_channel_audio_data	<= 1'b1;
				end
			end
			else begin
				tvalid_left_channel_audio_data		<= 1'b0;
				left_channel_audio_data					<= {24{1'b0}};
				cnt_left_channel_audio_bits			<= 0;
			end
		end
	end
	
	// Right channel:
	always@ (posedge pcm1808_bck) begin
		if (cmn_rst) begin
			tvalid_right_channel_audio_data			<= 1'b0;
			right_channel_audio_data 					<= {24{1'b0}};
			cnt_right_channel_audio_bits 				<= 0;
		end
		else begin
			if (pcm1808_lrck) begin
				right_channel_audio_data[0] 			<= pcm1808_dout;
				right_channel_audio_data[23:1]		<= right_channel_audio_data[22:0];
				
				cnt_right_channel_audio_bits 			<= cnt_right_channel_audio_bits + 1;
				if (cnt_right_channel_audio_bits == 23) begin
					tvalid_right_channel_audio_data	<= 1'b1;
				end
			end
			else begin
				tvalid_right_channel_audio_data		<= 1'b0;
				right_channel_audio_data				<= {24{1'b0}};
				cnt_right_channel_audio_bits			<= 0;
			end
		end
	end

	// ADC PCM1808 ports:
	assign pcm1808_fmt	= 1'b0;			// I2S, 24-bit format
	assign pcm1808_md 	= 2'b10;			// Master mode (384 fs)
	assign pcm1808_scki 	= cmn_clk_adc;	// 6.25 MHz (16 kHz sampling rate)
	
	// Output data ports:
	assign tvalid_LC_audio	= tvalid_left_channel_audio_data;
	assign LC_audio			= tvalid_left_channel_audio_data ? left_channel_audio_data : {24{1'b0}};
	assign tvalid_RC_audio 	= tvalid_right_channel_audio_data;
	assign RC_audio			= tvalid_right_channel_audio_data ? right_channel_audio_data : {24{1'b0}};

endmodule
