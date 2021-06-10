----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2021 06:48:13 PM
-- Design Name: 
-- Module Name: Multiplier - Behavioral
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

entity Multiplier is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

component HalfAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

signal a0b0, a0b1, a1b0, a1b1, c0: STD_LOGIC;

begin

C(0) <= a0b0;
a0b0 <= A(0) and B(0);
a0b1 <= A(0) and B(1);
a1b0 <= A(1) and B(0);

HA1: HalfAdder port map(a => a1b0, b => a0b1, s => C(1), cout => c0);

a1b1 <= A(1) and B(1);

HA2: HalfAdder port map(a => c0, b => a1b1, s => C(2), cout => C(3));


end Behavioral;
