----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2021 05:19:23 AM
-- Design Name: 
-- Module Name: Dec_2_to_4 - Behavioral
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

entity Dec_2_to_4 is
    Port ( DecoderInput : in STD_LOGIC_VECTOR (1 downto 0);
           DecoderOutput : out STD_LOGIC_VECTOR (3 downto 0));
end Dec_2_to_4;

architecture Behavioral of Dec_2_to_4 is

begin
    DecoderOutput(0) <= not DecoderInput(0) and not DecoderInput(1);
    DecoderOutput(1) <= DecoderInput(0) and not DecoderInput(1);
    DecoderOutput(2) <= not DecoderInput(0) and DecoderInput(1);
    DecoderOutput(3) <= DecoderInput(0) and DecoderInput(1);

end Behavioral;
