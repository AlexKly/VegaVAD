--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:33:07 12/27/2021
-- Design Name:   
-- Module Name:   D:/Library_Projects_FPGA/VegaVAD/tb_ADC_PCM1808_controller.vhd
-- Project Name:  VegaVAD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADC_PCM1808_controller
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
 
ENTITY tb_ADC_PCM1808_controller IS
END tb_ADC_PCM1808_controller;
 
ARCHITECTURE behavior OF tb_ADC_PCM1808_controller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADC_PCM1808_controller
    PORT(
         cmn_clk : IN  std_logic;
         cmn_rst : IN  std_logic;
         pcm1808_bck : IN  std_logic;
         pcm1808_dout : IN  std_logic;
         pcm1808_fmt : OUT  std_logic;
         pcm1808_lrck : IN  std_logic;
         pcm1808_md : OUT  std_logic_vector(1 downto 0);
         pcm1808_scki : OUT  std_logic;
         tvalid_LC_audio : OUT  std_logic;
         LC_audio : OUT  std_logic_vector(23 downto 0);
         tvalid_RC_audio : OUT  std_logic;
         RC_audio : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cmn_clk : std_logic := '0';
   signal cmn_rst : std_logic := '0';
   signal pcm1808_bck : std_logic := '0';
   signal pcm1808_dout : std_logic := '0';
   signal pcm1808_lrck : std_logic := '0';

 	--Outputs
   signal pcm1808_fmt : std_logic;
   signal pcm1808_md : std_logic_vector(1 downto 0);
   signal pcm1808_scki : std_logic;
   signal tvalid_LC_audio : std_logic;
   signal LC_audio : std_logic_vector(23 downto 0);
   signal tvalid_RC_audio : std_logic;
   signal RC_audio : std_logic_vector(23 downto 0);
	
	-- Others:
	signal gen_bits : std_logic_vector(23 downto 0) := (others => '0');
	signal shifted_bits : std_logic_vector(23 downto 0) := (others => '0');

   -- Clock period definitions
   constant cmn_clk_period 		: time := 10 ns;		-- 100 MHz
	constant pcm1808_bck_period	: time := 1500 us;	-- 16 kHz * 24-bit
	constant pcm1808_lrck_period	: time := 72000 us;	-- 16 kHz / 48 * 24-bit
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADC_PCM1808_controller PORT MAP (
          cmn_clk => cmn_clk,
          cmn_rst => cmn_rst,
          pcm1808_bck => pcm1808_bck,
          pcm1808_dout => pcm1808_dout,
          pcm1808_fmt => pcm1808_fmt,
          pcm1808_lrck => pcm1808_lrck,
          pcm1808_md => pcm1808_md,
          pcm1808_scki => pcm1808_scki,
          tvalid_LC_audio => tvalid_LC_audio,
          LC_audio => LC_audio,
          tvalid_RC_audio => tvalid_RC_audio,
          RC_audio => RC_audio
        );

   -- Clock process definitions
   cmn_clk_process :process
   begin
		cmn_clk <= '0';
		wait for cmn_clk_period/2;
		cmn_clk <= '1';
		wait for cmn_clk_period/2;
   end process;
	
	pcm1808_bck_process :process
	begin
		pcm1808_bck <= '1';
		wait for pcm1808_bck_period/2;
		pcm1808_bck <= '0';
		wait for pcm1808_bck_period/2;
	end process;
	
	pcm1808_lrck_process :process
	begin
		pcm1808_lrck <= '1';
		wait for pcm1808_lrck_period/2;
		pcm1808_lrck <= '0';
		wait for pcm1808_lrck_period/2;
	end process;
	
	gen_bits_proc :process(pcm1808_lrck, pcm1808_bck) begin	
		if falling_edge(pcm1808_lrck) then
			gen_bits <= gen_bits + '1';
			shifted_bits <= gen_bits;
		end if;
		
		if rising_edge(pcm1808_lrck) then
			gen_bits <= gen_bits;
			shifted_bits <= gen_bits;
		end if;
		
		if falling_edge(pcm1808_bck) then
			shifted_bits(23 downto 1)	<= shifted_bits(22 downto 0);
			shifted_bits(0) <= shifted_bits(23);
		end if;
	end process gen_bits_proc;
	pcm1808_dout <= shifted_bits(23);

END;
