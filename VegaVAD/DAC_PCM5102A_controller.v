`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:34 01/10/2022 
// Design Name: 
// Module Name:    DAC_PCM5102A_controller 
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
module DAC_PCM5102A_controller(
	// Common ports:
	input 				cmn_clk,			// 100 MHz
	input 				cmn_rst,			// Common reset
	input					cmn_clk_dac_1,	// 4.096 MHz
	input					cmn_clk_dac_2,	// 6.144 MHz
	
	// Input audio data:
	input 				tvalid_LC_audio,
	input		[23:0]	LC_audio,		// Left channel 24-bit data
	input					tvalid_RC_audio,
	input		[23:0]	RC_audio,		// Right channel 24-bit data
	
	// PCM5102A ports:
	output				pcm5102a_flt,	// Filter select
	output 				pcm5102a_demp,	// De-emphasis control for 44.1-kHz sampling rate
	output 				pcm5102a_xsmt,	// Soft mute control
	output 				pcm5102a_fmt,	// Audio format selection
	output				pcm5102a_sck,	// System clock input
	output				pcm5102a_bck,	// Audio data bit clock input
	output				pcm5102a_din,	// Audio data input
	output				pcm5102a_lrck	// Audio data word clock input
);

	// FIFO play 1:
	wire	[47:0]	fifo_play_dout_1;		// output [47 : 0] dout
	wire 				fifo_play_full_1;		// output full
	wire 				fifo_play_empty_1;	// output empty
	
	// FIFO play 2:
	wire	[47:0]	fifo_play_dout_2;		// output [47 : 0] dout
	wire 				fifo_play_full_2;		// output full
	wire 				fifo_play_empty_2;	// output empty
	
	// Controller FIFO's:
	reg	[1:0]		order_record 				= 2'b00;
	
	// Serching falling edge word clock:
	reg 				past_lrck 					= 1'b0;
	wire 				falling_edge_lrck 		= past_lrck && !cnt_cmn_clk_dac_2[7];
	
	// Clock divider:
	reg	[7:0] 	cnt_cmn_clk_dac_1			= 0;
	reg	[2:0] 	cnt_cmn_clk_dac_2			= 0;

	// LR word register:
	reg	[47:0]	LR_word						= {48{1'b0}};
	reg 				LC_audio_done 				= 1'b0;
	reg				RC_audio_done 			 	= 1'b0;
	reg				RC_audio_done_delayed	= 1'b0;
	
	// I2S interface:
	reg	[47:0]	i2s_reg_out					= {48{1'b0}};

	// FIFO play 1:
	fifo_play fifo48x128_first (
		.rst(cmn_rst), 								// input rst
		.wr_clk(RC_audio_done_delayed), 			// input wr_clk
		.rd_clk(falling_edge_lrck), 				// input rd_clk
		.din(LR_word), 								// input [47 : 0] din
		.wr_en(!cmn_rst), 							// input wr_en
		.rd_en(!cmn_rst && order_record[0]),	// input rd_en
		.dout(fifo_play_dout_1), 					// output [47 : 0] dout
		.full(fifo_play_full_1),					// output full
		.empty(fifo_play_empty_1)					// output empty
	);
	
	// FIFO play 2:
	fifo_play fifo48x128_second (
		.rst(cmn_rst), 								// input rst
		.wr_clk(RC_audio_done_delayed), 			// input wr_clk
		.rd_clk(falling_edge_lrck), 				// input rd_clk
		.din(LR_word), 								// input [47 : 0] din
		.wr_en(!cmn_rst), 							// input wr_en
		.rd_en(!cmn_rst && order_record[1]),	// input rd_en
		.dout(fifo_play_dout_2), 					// output [47 : 0] dout
		.full(fifo_play_full_2),					// output full
		.empty(fifo_play_empty_2)					// output empty
	);
	
	// Controller FIFO's:
	always@ (posedge cmn_clk) begin
		if (cmn_rst) begin
			order_record <= 2'b00;
		end
		else if (fifo_play_full_1 && !fifo_play_empty_1) begin
			order_record <= 2'b01;
		end
		else if (fifo_play_full_2 && !fifo_play_empty_2) begin
			order_record <= 2'b10;
		end
		
		if (fifo_play_empty_1) begin
			order_record[0] <= 1'b0;
		end
		if (fifo_play_empty_2) begin
			order_record[1] <= 1'b0;
		end
	end

	// Dividing clock for DAC:
	always@ (posedge cmn_clk_dac_1) begin
		if (cmn_rst) begin
			cnt_cmn_clk_dac_1 <= 0;
		end
		else begin
			cnt_cmn_clk_dac_1 <= cnt_cmn_clk_dac_1 + 1;
		end
	end
	always@ (posedge cmn_clk_dac_2) begin
		if (cmn_rst) begin
			cnt_cmn_clk_dac_2 <= 0;
		end
		else begin
			cnt_cmn_clk_dac_2 <= cnt_cmn_clk_dac_2 + 1;
		end
		
		past_lrck <= cnt_cmn_clk_dac_1[7];
	end

	// Unite audio data from two channels:
	always@ (posedge cmn_clk) begin
		if (cmn_rst) begin
			LR_word 			<= {48{1'b0}};
			LC_audio_done	<= 1'b0;
			RC_audio_done	<= 1'b0;
		end
		else begin
			if (tvalid_LC_audio) begin
				LR_word[47:24] <= LC_audio;
				LC_audio_done	<= 1'b1;
				RC_audio_done	<= 1'b0;
			end
			else if (tvalid_RC_audio && LC_audio_done) begin
				LR_word[23:0]	<= RC_audio;
				LC_audio_done	<= 1'b0;
				RC_audio_done	<= 1'b1;
			end
		end
		
		RC_audio_done_delayed <= RC_audio_done;
	end
	
	// I2S interface:
	always@ (negedge cnt_cmn_clk_dac_1[2]) begin
		if (falling_edge_lrck) begin
			if (order_record[0]) begin
				i2s_reg_out <= fifo_play_dout_1;
			end
			else if (order_record[1]) begin
				i2s_reg_out <= fifo_play_dout_2;
			end
		end
	end
	
	// PCM5102A ports:
	assign pcm5102a_flt	= 1'b0;						// FIR normal interpolation filters
	assign pcm5102a_demp	= 1'b0;						// De-emphasis control for 44.1-kHz sampling rate is off
	assign pcm5102a_xsmt	= 1'b1;						// Soft mute control is off
	assign pcm5102a_fmt	= 1'b0;						// I2S interface
	assign pcm5102a_sck	= 1'b0;						// Not used
	assign pcm5102a_bck	= cnt_cmn_clk_dac_2[2];	// 16 kHz * 48 = 768 kHz (bit clock)
	assign pcm5102a_lrck	= cnt_cmn_clk_dac_1[7];	// 16 kHz sampling rate (word clock)
 
endmodule
