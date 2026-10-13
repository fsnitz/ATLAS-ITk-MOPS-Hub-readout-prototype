----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.06.2024 14:34:59
-- Design Name: 
-- Module Name: led_blink - Behavioral
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

entity led_blink is
    Port ( clk_in : in STD_LOGIC;
           reset: in std_logic;
           led : out STD_LOGIC);
end led_blink;

architecture Behavioral of led_blink is
signal cnt : natural range 0 to 10000000 := 0;
signal leds : std_logic := '0';



begin
led <= leds;

p_blink:process (clk_in, cnt,reset)
begin
    if reset= '0' then 
        cnt <= 0;
        leds <= '0';
   elsif rising_edge (clk_in) then
        cnt <= cnt +1;
        
        if cnt = 10000000 then
            cnt <= 0;
            leds <= not leds;
        end if;     
    end if;
end process;
end Behavioral;
