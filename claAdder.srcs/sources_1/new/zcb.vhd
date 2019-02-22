library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity bcdDisplay is
    Port (  x : in STD_LOGIC_VECTOR (3 downto 0);
            AN : out STD_LOGIC_VECTOR (7 downto 0); 
            seg : out STD_LOGIC_VECTOR (6 downto 0));
end bcdDisplay;

architecture Behavioral of bcdDisplay is
begin
    AN(0) <= '0';
    AN(1) <= '1';
    AN(2) <= '1';
    AN(3) <= '1';
    AN(4) <= '1';
    AN(5) <= '1';
    AN(6) <= '1';
    AN(7) <= '1';
    
    seg(0) <= (x(2) and not(x(1)) and not(x(0))) or (not(x(3)) and not(x(2)) and not(x(1)) and x(0));
    seg(1) <= (x(2) and not (x(1)) and x(0)) or (x(2) and x(1) and not(x(0)));
    seg(2) <= (not (x(2)) and x(1) and not(x(0)));
    seg(3) <= (x(2) and not (x(1)) and not (x(0))) or (x(2) and x(1) and x(0)) or (not(x(3)) and not (x(2)) and not(x(1)) and x(0));
    seg(4) <= x(0) or (x(2) and not(x(1)));
    seg(5) <= (not(x(3)) and not (x(2)) and x(0)) or (x(1) and x(0)) or (not(x(3)) and not(x(2)) and x(1));
    seg(6) <= (not(x(3)) and not (x(2)) and not(x(1))) or (x(2) and x(1) and x(0));

end Behavioral;
