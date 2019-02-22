library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UAL16 is
    Port (
        A_16, B_16 : in std_logic_vector(15 downto 0);
        cin_16 : in std_logic;
        S_16 : out std_logic_vector(15 downto 0);
        Cout_16 : out std_logic;
        Cout_8 : out std_logic;
        PG_16, GG_16 : out std_logic
    );
end UAL16;

architecture Behavioral of UAL16 is
    component UAL is
        Port ( 
            A, B : in std_logic_vector(3 downto 0);
            cin : in std_logic;
            S : out std_logic_vector(3 downto 0);
            Cout : out std_logic;
            PG, GG : out std_logic);
    end component; 
	
    component CLA is
        Port (
            P, G : in std_logic_vector(3 downto 0);
            cin : in std_logic;
            PG, GG : out std_logic;
            Cout : out std_logic_vector(3 downto 0)
        );
    end component;
	
	signal PG_s, GG_s, Cout_s: std_logic_vector(3 downto 0);
	signal pg_o, gg_o : std_logic;
begin
	cla1 : CLA port map (P => PG_s, G => GG_s, cin => cin_16, PG => pg_o, GG => gg_o, Cout => Cout_s);
	
	UAL1 : UAL port map(A => A_16( 3 downto  0), B => B_16( 3 downto  0), cin => cin_16,    S => S_16( 3 downto  0), PG => PG_s(0), GG => GG_s(0));
	UAL2 : UAL port map(A => A_16( 7 downto  4), B => B_16( 7 downto  4), cin => Cout_s(0), S => S_16( 7 downto  4), PG => PG_s(1), GG => GG_s(1));
	UAL3 : UAL port map(A => A_16(11 downto  8), B => B_16(11 downto  8), cin => Cout_s(1), S => S_16(11 downto  8), PG => PG_s(2), GG => GG_s(2));
    UAL4 : UAL port map(A => A_16(15 downto 12), B => B_16(15 downto 12), cin => Cout_s(2), S => S_16(15 downto 12), PG => PG_s(3), GG => GG_s(3));    
	
	PG_16 <= pg_o;
    GG_16 <= gg_o;
    Cout_16 <= Cout_s(3);
    Cout_8 <= Cout_s(1);
	
end Behavioral;
