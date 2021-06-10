----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 06:04:21 PM
-- Design Name: 
-- Module Name: Top_adder - Behavioral
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

entity Top_adder is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Top_adder;

architecture Behavioral of Top_adder is

component Adder is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (1 downto 0);
           Cout : out STD_LOGIC);
end component;

begin

A1: Adder port map (
--            A => sw(1 downto 0),
--            B => sw(3 downto 2),
            A => "01",
            B => "10",
            Cin => '0',
            S => led(1 downto 0),
            Cout => led(2));

end Behavioral;
