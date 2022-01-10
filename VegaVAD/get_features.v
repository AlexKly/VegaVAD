`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:51 12/28/2021 
// Design Name: 
// Module Name:    get_features 
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
module get_features #(
	parameter 				CHOOSE_CHANNEL 	= 1'b0,			// 1'b0 - left channel, 1'b1 - right channel
	parameter	[31:0]	PRE_EMPHASIS_COEF = 32'hbf7851ec	// Coefficient of preemphasis filter
)
(
	// Common ports:
	input 			get_features_clk,		// Common clock
	input				get_features_bclk,	// Common bit clock
	input 			get_features_rst,		// Common reset
	
	// Input data:
	input 			tvalid_l_data,			// Valid left channel data
	input	[23:0]	l_data,					// Left channel data
	input 			tvalid_r_data,			// Valid right channel data
	input [23:0] 	r_data					// Right channel data
	);
	
	// Common signals:
	wire 				tvalid_audio_data	= CHOOSE_CHANNEL ? tvalid_r_data : tvalid_l_data;	// Choose the channel
	wire	[23:0]	audio_data 			= CHOOSE_CHANNEL ? r_data : l_data;						// Choose the channel
	
	// Converting Integer 24-bit to Float 32-bit:
	wire 				tvalid_float32;
	wire	[31:0] 	float32;
	
	// Pre-emphasis:
	wire 				tvalid_filtered_stream;
	wire	[31:0] 	filtered_stream;
	
	// Framing stream:
	wire 				tvalid_framing_stream;
	wire	[31:0] 	framing_stream;
	 
	// Windowing:
	wire 				tready_hamm_stream;
	wire	[31:0]	hamm_stream;
	
	// FFT:
	wire 				tready_powspectr;
	wire	[31:0]	powspectr;
	
	// Converting Integer 24-bit to Float 32-bit:
	floating_point_int24_to_float32 Int24_to_Float32 (
		.s_axis_a_tvalid(tvalid_audio_data), 	// input s_axis_a_tvalid
		.s_axis_a_tdata(audio_data), 				// input [23 : 0] s_axis_a_tdata
		.m_axis_result_tvalid(tvalid_float32),	// output m_axis_result_tvalid
		.m_axis_result_tdata(float32) 			// output [31 : 0] m_axis_result_tdata
	);
	
	// Pre-emphasis:
	Pre_emphasis #(
		.PRE_EMPHASIS_COEF(PRE_EMPHASIS_COEF)
	)
	pre_filtering (
		.clk(get_features_bclk),
		.rst(get_features_rst),
		.tvalid_input_stream(tvalid_float32),
		.input_stream(float32),
		.tvalid_filtered_stream(tvalid_filtered_stream),
		.filtered_stream(filtered_stream)
	);
	
	// Framing stream:
	get_frames framing (
		.clk_slow(get_features_bclk),
		.clk_fast(get_features_clk),
		.reset(get_features_rst),
		.en_audio_d(tvalid_filtered_stream),
		.audio_d(filtered_stream),
		.Stream_enable(tvalid_framing_stream),
		.Stream_out(framing_stream)
	);
	
	// Windowing:
	windowing hamming_window (
		.clk(get_features_clk),
		.rst(get_features_rst),
		.tvalid_stream(tvalid_framing_stream),
		.stream(framing_stream),
		.tready_hamm_stream(tready_hamm_stream),
		.hamm_stream(hamm_stream)
	);

	// FFT:
	power_spectrum fft_function (
		.clk(get_features_clk),
		.rst(get_features_rst),
		.tvalid_hamm_stream(tready_hamm_stream),
		.hamm_stream(hamm_stream),
		.tready_powspectr(tready_powspectr),
		.powspectr(powspectr)
	);

endmodule
