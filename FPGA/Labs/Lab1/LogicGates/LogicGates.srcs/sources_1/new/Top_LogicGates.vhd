----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2021 12:33:44 PM
-- Design Name: 
-- Module Name: Top_LogicGates - Behavioral
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

entity Top_LogicGates is
    Port ( sw : in STD_LOGIC_VECTOR (1 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0));
end Top_LogicGates;

architecture Behavioral of Top_LogicGates is


component LogicGates is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

   LG1 : LogicGates
    port map(
        A => sw(0),
        B => sw(1),
        Z(0) => led(0),
        Z(1) => led(1),
        Z(2) => led(2),
        Z(3) => led(3));

end Behavioral;
