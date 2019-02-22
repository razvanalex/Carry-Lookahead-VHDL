library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port (
        A, B, Cin: in std_logic;
        P, G, S: out std_logic
    );
end fullAdder;

architecture Behavioral of fullAdder is
begin
    P <= A xor B;
    G <= A and B;
    S <= A xor B xor Cin;
end Behavioral;