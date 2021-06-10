----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2021 04:34:44 PM
-- Design Name: 
-- Module Name: Top_Decoder_2_to_4 - Behavioral
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

entity Top_Decoder_2_to_4 is
    Port ( btn : in STD_LOGIC_VECTOR (3 downto 0);
           sw : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Top_Decoder_2_to_4;

architecture Behavioral of Top_Decoder_2_to_4 is

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

--D1: Decoder_2_to_4
--port map(
--    w0 => btn(0),
--    w1 => btn(1),
--    En => sw(0),
--    y0 => led(0),
--    y1 => led(1),
--    y2 => led(2),
--   y3 => led(3));
        
D1: Decoder_2_to_4
port map(
    w0 => '0',
    w1 => '1',
    En => '1',
    y0 => led(0),
    y1 => led(1),
    y2 => led(2),
    y3 => led(3));

end Behavioral;
