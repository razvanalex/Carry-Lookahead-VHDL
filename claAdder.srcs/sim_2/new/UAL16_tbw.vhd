library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ual16_twb is
  --Port ( );
end ual16_twb;

architecture Behavioral of ual16_twb is
    component UAL16 is
        Port (
            A_16, B_16 : in std_logic_vector(15 downto 0);
            cin_16 : in std_logic;
            S_16 : out std_logic_vector(15 downto 0);
            Cout_16 : out std_logic;
            PG_16, GG_16 : out std_logic
        );
    end component;

    signal A, B, S : std_logic_vector(15 downto 0);
    signal cin, cout, pg, gg : std_logic;
begin
    uut1 : UAL16 port map (A_16 => A, B_16 => B, cin_16 => cin, S_16 => S, PG_16 => pg, GG_16 => gg, Cout_16 => cout);
    process1 : process begin
        A <= x"0000";
        B <= x"F4A9";
        cin <= '0';
        wait for 100ns;
        
        A <= x"1234";
        B <= x"ABCD";
        cin <= '0';
        wait for 100ns;
        
        A <= x"1F3E";
        B <= x"FF4E";
        cin <= '0';
        wait for 100ns;
        
        A <= x"0006";
        B <= x"0005";
        cin <= '0';
        wait for 100ns;
        
        A <= x"4067";
        B <= x"A704";
        cin <= '0';
        wait for 100ns;
        
        A <= x"1111";
        B <= x"2222";
        cin <= '0';
        wait for 100ns;
        
        A <= x"F0A1";
        B <= x"167A";
        cin <= '0';
        wait for 100ns;
        
        A <= x"AAAA";
        B <= x"5555";
        cin <= '0';
        wait for 100ns;
        
        A <= x"FFFF";
        B <= x"0001";
        cin <= '0';
        wait for 100ns;
        
        A <= x"FFFF";
        B <= x"FFFF";
        cin <= '0';
        wait for 100ns;
    end process;
    
end Behavioral;
