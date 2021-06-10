----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2021 01:05:06 PM
-- Design Name: 
-- Module Name: Counter_design2 - Behavioral
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

entity Counter_design2 is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end Counter_design2;

architecture Behavioral of Counter_design2 is

signal cnt : std_logic_vector (3 downto 0);

begin

    process(clock, reset)
    begin
        if reset = '1' then
            cnt <= "0000";
        elsif rising_edge(clock) then
            cnt(3) <= cnt(3) xor (cnt(2) and cnt(1) and cnt(0));
            cnt(2) <= cnt(2) xor (cnt(1) and cnt(0));
            cnt(1) <= cnt(1) xor cnt(0);
            cnt(0) <= not cnt(0);
        end if;
    end process;
    
    count <= cnt;

end Behavioral;
