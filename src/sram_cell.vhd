-- ============================================================
-- 6T SRAM Cell Model
-- Behavioral model of a single 6T SRAM bit cell
-- Author: Ahmet Tarık Doğmuş
-- ============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sram_cell is
    Port (
        WL  : in  STD_LOGIC;
        BL  : inout STD_LOGIC;
        BLB : inout STD_LOGIC
    );
end sram_cell;

architecture Behavioral of sram_cell is
    signal Q  : STD_LOGIC := '0';
    signal QB : STD_LOGIC := '1';
begin
    QB <= not Q;
    Q  <= not QB;

    process(WL, BL, BLB)
    begin
        if WL = '1' then
            if BL = '1' and BLB = '0' then
                Q <= '1';
            elsif BL = '0' and BLB = '1' then
                Q <= '0';
            end if;
        end if;
    end process;

    BL  <= Q  when WL = '1' else 'Z';
    BLB <= QB when WL = '1' else 'Z';
end Behavioral;
