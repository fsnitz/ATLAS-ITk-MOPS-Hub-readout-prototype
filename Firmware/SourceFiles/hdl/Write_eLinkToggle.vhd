----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.08.2024 07:06:17
-- Design Name: 
-- Module Name: Write_eLinkToggle - Behavioral
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

entity Write_eLinkToggle is
    Port ( clk : in STD_LOGIC;
           rst_n : in STD_LOGIC;
           Wr_en : out STD_LOGIC);
end Write_eLinkToggle;

architecture Behavioral of Write_eLinkToggle is
signal cnt : natural range 0 to 200 := 0;
signal toggled: std_logic; 
signal Wr_enToggle: std_logic; 

begin
Wr_en <= Wr_enToggle; 

cnt_proc: process(clk, rst_n, cnt)
begin
    if rising_edge(clk) then
        if rst_n = '0' then 
            cnt <= 0; 
        elsif cnt = 200 then 
            cnt <= 0; 
        else 
            cnt <= cnt +1; 
        end if; 
    end if; 
end process; 

Toggle: process(clk, rst_n, cnt)
begin
    if rising_edge(clk) then 
        if rst_n = '0' then 
            Wr_enToggle <= '0'; 
            toggled <= '0'; 
        elsif cnt = 200 and toggled = '0' then
            Wr_enToggle <= '1'; 
            toggled <= '1'; 
        elsif cnt = 1 and toggled = '1' then    
            Wr_enToggle <= '0'; 
            toggled <= '0'; 
        else 
            Wr_enToggle <= Wr_enToggle; 
            toggled <= toggled; 
        end if; 
    end if;
end process;          
        
end Behavioral;
