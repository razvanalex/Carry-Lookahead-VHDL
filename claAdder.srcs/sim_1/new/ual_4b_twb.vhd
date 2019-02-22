library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ual_4b_twb is
  generic(n: natural := 4);
  --Port ( );
end ual_4b_twb;

architecture Behavioral of ual_4b_twb is
    component UAL is
        Port ( 
            A, B : in std_logic_vector(n-1 downto 0);
            cin : in std_logic;
            S : out std_logic_vector(n-1 downto 0);
            Cout : out std_logic;
            PG, GG : out std_logic);
    end component;

    signal A, B, S: std_logic_vector(n-1 downto 0);
    signal cin, PG, GG, cout: std_logic;
begin
    uut1 : UAL port map (A => A, B => B, cin => cin, S => S, PG => PG, GG => GG, Cout => cout);
    process1 : process begin
        A <= "0101";
        B <= "1011";
        cin <= '1';
        wait for 100ns;
    end process;
    
end Behavioral;
