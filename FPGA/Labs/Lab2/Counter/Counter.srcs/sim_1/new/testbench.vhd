----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2021 01:21:57 PM
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

signal Inclock : STD_LOGIC := '0';
signal Inreset : STD_LOGIC := '0';
signal Outcount1 : STD_LOGIC_VECTOR (3 downto 0);
signal Outcount2 : STD_LOGIC_VECTOR (3 downto 0);

component Counter_design1 is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Counter_design2 is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

C1: Counter_design1 port map(clock => Inclock, reset => Inreset, count => Outcount1);
C2: Counter_design2 port map(clock => Inclock, reset => Inreset, count => Outcount2);

process begin
    Inreset <= '1';
    Inclock <= '0';
    wait for 2ns;
    Inclock <= '1';
    wait for 2ns;
    Inreset <= '0';
    Inclock <= '0';
    wait for 2ns;
    
    for l in 0 to 15 loop
        Inclock <= '1';
        wait for 2ns;
        Inclock <= '0';
        wait for 2ns;
    end loop;
    
end process;

end Behavioral;
