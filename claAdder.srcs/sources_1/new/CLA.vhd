library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLA is
    generic(n : natural := 4);
    Port (
        P, G : in std_logic_vector(n-1 downto 0);
        cin : in std_logic;
        PG, GG : out std_logic;
        Cout : out std_logic_vector(n-1 downto 0)
    );
end CLA;

architecture Behavioral of CLA is
begin   
    process (P, G, cin)
        variable auxP, auxG, tmp : std_logic;
        variable auxC : std_logic_vector(n downto 0);
        begin
        auxP := '1';
        auxG := '0';
        auxC(0) := cin;
        
        for i in 0 to n-1 loop
            auxP := auxP and P(i);
            
            tmp := G(i);
            for j in n-1 downto i+1 loop
                tmp := tmp and P(j);
            end loop;
            auxG := auxG or tmp;
            
            --C(i+1) := G(i) or (P(i) and C(i));
            auxC(i+1) := G(i) or (P(i) and auxC(i));
            
        end loop;
        
        PG <= auxP;
        GG <= auxG;
        Cout <= auxC(n downto 1);  
    end process;
    
end Behavioral;
