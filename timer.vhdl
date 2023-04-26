
library ieee;
use ieee.std_logic_1164.all;

entity digital_timer is
    port(
        count   :in std_logic_vector(6 down 0);
        display :out std_logic_vector(6 down 0);
        clock   :in std_logic;
        start   :in std_logic;
        pause   :in std_logic;
        reset   :in std_logic;

    );
end digital_timer;

architecture behavior of digital_timer is 
    --Inputs
    signal count    :std_logic_vector(6 downto 0);
    signal clock    :std_logic;
    signal start    :std_logic;
    signal pause    :std_logic;
    signal reset    :std_logic;

    -- Outputs
    signal display  :std_logic_vector(6 downto 0);
begin
    process(clock)
    begin
        if clock'event and clock='1' then
 
            if count='0' then
                tmp <= tmp;
                elsif T='1' then
                    tmp <= not (tmp);
                end if;
            end if;
            end process;
end behavior


