library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  Port (A : in std_logic_vector(15 downto 0);
		B : in std_logic_vector(15 downto 0);
		seg_s : out std_logic_vector(6 downto 0);
		AN_s : out std_logic_vector(7 downto 0);
		Cout : out std_logic
	);
end top;

architecture Behavioral of top is
	component UAL16 is
		Port (
			A_16, B_16 : in std_logic_vector(15 downto 0);
			cin_16 : in std_logic;
			S_16 : out std_logic_vector(15 downto 0);
			Cout_16 : out std_logic;
			Cout_8 : out std_logic;
			PG_16, GG_16 : out std_logic
		);
	end component;

    component bcdDisplay is
        Port (  x : in STD_LOGIC_VECTOR (3 downto 0);
                AN : out STD_LOGIC_VECTOR (7 downto 0); 
                seg : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

	signal cin : std_logic := '0';
	signal S : std_logic_vector(15 downto 0);
	
begin
	ual : UAL16 port map(A_16 => A, B_16 => B, cin_16 => cin, S_16 => S, Cout_8 => Cout);
	bcd : bcdDisplay port map(x => S(3 downto 0), AN => AN_s, seg => seg_s);
end Behavioral;
