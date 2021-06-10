----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2021 07:45:19 PM
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

component Multiplier is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal InA : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal Inb : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal OutC : STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin

M1: Multiplier port map (A => InA, B => InB, C => OutC);

process begin
    InA <= "00"; InB <= "00"; wait for 2ns;
    InA <= "01"; InB <= "01"; wait for 2ns;
    InA <= "10"; InB <= "10"; wait for 2ns;
    InA <= "11"; InB <= "11"; wait for 2ns;
end process;
end Behavioral;
