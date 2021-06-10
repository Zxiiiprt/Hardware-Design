----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2021 07:51:17 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

SIGNAL Inw0 : STD_LOGIC := '0';
SIGNAL Inw1 : STD_LOGIC := '0';                                  
SIGNAL InEn : STD_LOGIC := '0';
SIGNAL Outy0 : STD_LOGIC := '0';
SIGNAL Outy1 : STD_LOGIC := '0';
SIGNAL Outy2 : STD_LOGIC := '0';
SIGNAL Outy3 : STD_LOGIC := '0';

component Decoder_2_to_4 is
    Port ( w0 : in STD_LOGIC;
           w1 : in STD_LOGIC;
           En : in STD_LOGIC;
           y0 : out STD_LOGIC;
           y1 : out STD_LOGIC;
           y2 : out STD_LOGIC;
           y3 : out STD_LOGIC);
end component;

begin

DCD: Decoder_2_to_4
    port map (
        w0 => Inw0,
        w1 => Inw1,
        En => InEn,
        y0 => Outy0,
        y1 => Outy1,
        y2 => Outy2,
        y3 => Outy3);
       
    process
    begin
  
        InEn <= '1';
        Inw0 <= '0';
        Inw1 <= '0';
        wait for 2ns;
        Inw0 <= '0';
        Inw1 <= '1';
        wait for 2ns;
        Inw0 <= '1';
        Inw1 <= '0';
        wait for 2ns;
        Inw0 <= '1';
        Inw1 <= '1';
        wait for 2ns;
        Inw0 <= '0';
        Inw1 <= '0';
        wait for 2ns;
        InEn <= '0';
        Inw0 <= '0';
        Inw1 <= '0';
        wait for 2ns;
        Inw0 <= '0';
        Inw1 <= '1';
        wait for 2ns;
        Inw0 <= '1';
        Inw1 <= '0';
        wait for 2ns;
        Inw0 <= '1';
        Inw1 <= '1';
        wait for 2ns;   
    end process;
        
end Behavioral;
