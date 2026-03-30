-- ============================================================
-- Row Decoder — Binary to One-Hot
-- Selects the wordline for a given row address
-- Author: Ahmet Tarık Doğmuş
-- ============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity row_decoder is
    Generic (
        ADDR_WIDTH : integer := 3;
        ROWS       : integer := 8
    );
    Port (
        addr : in  STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        en   : in  STD_LOGIC;
        WL   : out STD_LOGIC_VECTOR(ROWS-1 downto 0)
    );
end row_decoder;

architecture Behavioral of row_decoder is
begin
    process(addr, en)
        variable sel : integer;
    begin
        WL  <= (others => '0');
        if en = '1' then
            sel     := to_integer(unsigned(addr));
            WL(sel) <= '1';
        end if;
    end process;
end Behavioral;
