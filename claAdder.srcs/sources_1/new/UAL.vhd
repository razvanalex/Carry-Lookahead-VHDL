library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;

entity UAL is
    generic(n: natural := 4);
    Port ( 
        A, B : in std_logic_vector(n-1 downto 0);
        cin : in std_logic;
        S : out std_logic_vector(n-1 downto 0);
        Cout : out std_logic;
        PG, GG : out std_logic);
end UAL;

architecture Behavioral of UAL is
    component fullAdder is
        Port (
            A, B, Cin: in std_logic;
            P, G, S: out std_logic
        );
    end component;
   
    component CLA is
        Port (
            P, G : in std_logic_vector(n-1 downto 0);
            cin : in std_logic;
            PG, GG : out std_logic;
            Cout : out std_logic_vector(n-1 downto 0)
        );
    end component; 
    
    signal P_s, G_s, S_s, Cout_s: std_logic_vector(n-1 downto 0);
    signal pg_o, gg_o : std_logic;
    
begin
    cla1 : CLA port map (P => P_s, G => G_s, cin => cin, PG => pg_o, GG => gg_o, Cout => Cout_s);  
    adder1 : fullAdder port map (A => A(0), B => B(0), Cin => cin, P => P_s(0), G => G_s(0), S => S_s(0));
    adder2 : fullAdder port map (A => A(1), B => B(1), Cin => Cout_s(0),  P => P_s(1), G => G_s(1), S => S_s(1));
    adder3 : fullAdder port map (A => A(2), B => B(2), Cin => Cout_s(1),  P => P_s(2), G => G_s(2), S => S_s(2));
    adder4 : fullAdder port map (A => A(3), B => B(3), Cin => Cout_s(2),  P => P_s(3), G => G_s(3), S => S_s(3));
    
    PG <= pg_o;
    GG <= gg_o;
    S <= S_s;
    Cout <= Cout_s(3);

end Behavioral;
