--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:41:29 12/28/2021
-- Design Name:   
-- Module Name:   D:/Library_Projects_FPGA/VegaVAD/VegaVAD_main_tb.vhd
-- Project Name:  VegaVAD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VegaVAD_main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY VegaVAD_main_tb IS
END VegaVAD_main_tb;
 
ARCHITECTURE behavior OF VegaVAD_main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VegaVAD_main
    PORT(
			-- External clock:
         CLK_50M 			: IN std_logic;							-- Core clock
			
			-- ADC PCM1808 audio capture:
         PCM1808_BCK		: IN std_logic; 							-- Audio-data bit-clock
         PCM1808_DOUT	: IN std_logic; 							-- Serial audio-data
         PCM1808_FMT		: OUT std_logic; 							-- Auido-interface format select
         PCM1808_LRCK	: IN std_logic; 							-- Audio-data latch-enable
         PCM1808_MD		: OUT std_logic_vector(1 downto 0);	-- Audio-interface mode select
         PCM1808_SCKI	: OUT std_logic; 							-- System clock
			
			-- DAC PCM5102A audio player:
			PCM5102A_FLT	: OUT std_logic;							-- Filter select
			PCM5102A_DEMP	: OUT std_logic;							-- De-emphasis control for 44.1-kHz sampling rate
			PCM5102A_XSMT	: OUT std_logic;							-- Soft mute control
			PCM5102A_FMT	: OUT std_logic;							-- Audio format selection
			PCM5102A_SCK	: OUT std_logic;							-- System clock input
			PCM5102A_BCK	: OUT std_logic;							-- Audio data bit clock input
			PCM5102A_DIN	: OUT std_logic;							-- Audio data input
			PCM5102A_LRCK	: OUT std_logic							-- Audio data word clock input
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_50M 					: std_logic := '0';
   signal PCM1808_BCK 				: std_logic := '0';
   signal PCM1808_DOUT				: std_logic := '0';
   signal PCM1808_LRCK				: std_logic := '0';

 	--Outputs
   signal PCM1808_FMT 				: std_logic;
   signal PCM1808_MD 				: std_logic_vector(1 downto 0);
   signal PCM1808_SCKI 				: std_logic;
	signal PCM5102A_FLT 				: std_logic;
	signal PCM5102A_DEMP				: std_logic;
	signal PCM5102A_XSMT 			: std_logic;
	signal PCM5102A_FMT 				: std_logic;
	signal PCM5102A_SCK 				: std_logic;
	signal PCM5102A_BCK 				: std_logic;
	signal PCM5102A_DIN 				: std_logic;
	signal PCM5102A_LRCK				: std_logic;

	-- Others:
	signal past_lrck 					: std_logic := '0';
	signal rising_lrck_front 		: std_logic := '0';
	signal falling_lrck_front 		: std_logic := '0';
	signal past_bck 					: std_logic := '0';
	signal falling_bck_front		: std_logic := '0';
	signal gen_bits 					: std_logic_vector(23 downto 0) := (others => '0');
	signal shifted_bits 				: std_logic_vector(23 downto 0) := (others => '0');

   -- Clock period definitions
   constant CLK_50M_period 		: time := 20 ns;			-- 50 MHz
	constant PCM1808_BCK_period 	: time := 2.60416 us; 	-- 16 kHz / 24
	constant PCM1808_LRCK_period	: time := 124.99968 us;	-- tBCK * 48
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VegaVAD_main PORT MAP (
          CLK_50M 		=> CLK_50M,
			 
          PCM1808_BCK 	=> PCM1808_BCK,
          PCM1808_DOUT 	=> PCM1808_DOUT,
          PCM1808_FMT 	=> PCM1808_FMT,
          PCM1808_LRCK 	=> PCM1808_LRCK,
          PCM1808_MD 	=> PCM1808_MD,
          PCM1808_SCKI 	=> PCM1808_SCKI,
			 
			 PCM5102A_FLT	=> PCM5102A_FLT,
			 PCM5102A_DEMP	=> PCM5102A_DEMP,
			 PCM5102A_XSMT	=> PCM5102A_XSMT,
			 PCM5102A_FMT	=> PCM5102A_FMT,
			 PCM5102A_SCK	=> PCM5102A_SCK,
			 PCM5102A_BCK	=> PCM5102A_BCK,
			 PCM5102A_DIN	=> PCM5102A_DIN,
			 PCM5102A_LRCK	=> PCM5102A_LRCK
        );

   -- Clock process definitions
   CLK_50M_process :process
   begin
		CLK_50M <= '0';
		wait for CLK_50M_period/2;
		CLK_50M <= '1';
		wait for CLK_50M_period/2;
   end process;
	
	PCM1808_BCK_process :process
	begin
		PCM1808_BCK <= '0';
		wait for PCM1808_BCK_period/2;
		PCM1808_BCK <= '1';
		wait for PCM1808_BCK_period/2;
	end process;
	
	PCM1808_LRCK_process :process
	begin
		PCM1808_LRCK <= '0';
		wait for PCM1808_LRCK_period/2;
		PCM1808_LRCK <= '1';
		wait for PCM1808_LRCK_period/2;
	end process;
	
	searching_fronts_proc :process(CLK_50M) begin
		if rising_edge(CLK_50M) then
			past_lrck <= PCM1808_LRCK;
			rising_lrck_front <= not(past_lrck) and PCM1808_LRCK;
			falling_lrck_front <= past_lrck and not(PCM1808_LRCK);
			
			past_bck <= PCM1808_BCK;
			falling_bck_front <= past_bck and not(PCM1808_BCK);
			
			if falling_bck_front = '1' then
				if rising_lrck_front = '1' or falling_lrck_front = '1' then
					shifted_bits <= gen_bits;
				else
					shifted_bits(23 downto 1)	<= shifted_bits(22 downto 0);
					shifted_bits(0) <= shifted_bits(23);
				end if;
			end if;
		end if;
	end process searching_fronts_proc;

	gen_bits_proc :process(PCM1808_LRCK) begin	
		if falling_edge(PCM1808_LRCK) then
			gen_bits <= gen_bits + '1';
		end if;
	end process gen_bits_proc;
	pcm1808_dout <= shifted_bits(23);

END;
