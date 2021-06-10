----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2021 06:46:12 PM
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

signal InA : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal InB : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal InCin : STD_LOGIC := '0';
signal OutSum : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal OutCout : STD_LOGIC := '0';

component Adder is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (1 downto 0);
           Cout : out STD_LOGIC);
end component;

begin

A1: Adder port map(A => InA, B => InB, Cin => InCin, S => OutSum, Cout => OutCout);

    process begin
        InA <= "10";
        InB <= "00";
        InCin <= '0';
        wait for 2ns;
        InA <= "01";
        InB <= "10";
        InCin <= '0';
        wait for 2ns;
        InA <= "01";
        InB <= "01";
        InCin <= '0';
    end process;
end Behavioral;
