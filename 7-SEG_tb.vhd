-------------------------------------------------------------------------------
-- File downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
-- This file converts an input binary number into an output which can get sent
-- to a 7-Segment LED.  7-Segment LEDs have the ability to display all decimal
-- numbers 0-9 as well as hex digits A, B, C, D, E and F.  The input to this
-- module is a 4-bit binary number.  This module will properly drive the
-- individual segments of a 7-Segment LED in order to display the digit.
-- Hex encoding table can be viewed at:
-- http://en.wikipedia.org/wiki/Seven-segment_display
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity Binary_To_7Segment_tb is
end Binary_To_7Segment_tb;
 
architecture behave of Binary_To_7Segment_tb is
 
  -- Component declaration for the Unit Under Test (UUT)  
  component Binary_To_7Segment is
  port (
    i_Clk        : in  std_logic;
    i_Binary_Num : in  std_logic_vector(3 downto 0);
    o_Segment_A  : out std_logic;
    o_Segment_B  : out std_logic;
    o_Segment_C  : out std_logic;
    o_Segment_D  : out std_logic;
    o_Segment_E  : out std_logic;
    o_Segment_F  : out std_logic;
    o_Segment_G  : out std_logic;
	o_Segment_DP : out std_logic
    );
end component Binary_To_7Segment;

  -- 1 MHz = 1000 nanoseconds period
	constant c_CLOCK_PERIOD : time := 10000 ns; 
 
    signal r_Clk        : std_logic := '0';
    signal r_Binary_Num : std_logic_vector(3 downto 0):= (others => '0');
    signal r_Segment_A  : std_logic := '0';
    signal r_Segment_B  : std_logic := '0';
    signal r_Segment_C  : std_logic := '0';
    signal r_Segment_D  : std_logic := '0';
    signal r_Segment_E  : std_logic := '0';
    signal r_Segment_F  : std_logic := '0';
    signal r_Segment_G  : std_logic := '0';
	signal r_Segment_DP : std_logic := '0';
  
begin
 
  -- Instantiate the Unit Under Test (UUT)
  UUT : Binary_To_7Segment
    port map (
	i_Clk         => r_Clk,
    i_Binary_Num  => r_Binary_Num,
    o_Segment_A   => r_Segment_A,
    o_Segment_B   => r_Segment_B,
    o_Segment_C   => r_Segment_C,
    o_Segment_D   => r_Segment_D,
    o_Segment_E   => r_Segment_E,
    o_Segment_F   => r_Segment_F,
    o_Segment_G   => r_Segment_G,
	o_Segment_DP  => r_Segment_DP
      );
 
  p_CLK_GEN : process is
  begin
    wait for c_CLOCK_PERIOD/2;
    r_Clk <= not r_Clk;
  end process p_CLK_GEN; 
   
    -- main testing 
  process                             
  begin
  
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
 
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '0';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '0';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '0';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '0';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	r_Binary_Num(0) <= '1';
	r_Binary_Num(1) <= '1';
	r_Binary_Num(2) <= '1';
	r_Binary_Num(3) <= '1';
    wait for 0.2 sec;
	
	
    wait for 2 sec; 
  end process;
   
end behave;