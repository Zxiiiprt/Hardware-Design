----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2021 01:05:06 PM
-- Design Name: 
-- Module Name: Counter_design1 - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_design1 is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end Counter_design1;

architecture Behavioral of Counter_design1 is

signal cnt : std_logic_vector (3 downto 0);

begin

    process(clock, reset)
    begin
        if reset = '1' then
            cnt <= "0000";
        elsif rising_edge(clock) then
            cnt <= cnt + '1';
        end if;
    end process;
    
    count <= cnt;

end Behavioral;
