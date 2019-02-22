library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final_test is
  --Port ( );
end final_test;

architecture Behavioral of final_test is
    component top is
      Port (A : in std_logic_vector(15 downto 0);
            B : in std_logic_vector(15 downto 0);
            seg_s : out std_logic_vector(6 downto 0);
            AN_s : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    signal cout : std_logic := '0' ;
    signal A_s, B_s : std_logic_vector(15 downto 0);
    signal seg : std_logic_vector(6 downto 0);
    signal AN : std_logic_vector(3 downto 0);  
    
begin
    uut1 : top port map (A => A_s, B => B_s, seg_s => seg, AN_s => AN, Cout => cout);
    process1 : process begin    

        A_s <= x"0001";
        B_s <= x"0001";
        wait for 100ns;

        A_s <= x"0001";
        B_s <= x"0008";
        wait for 100ns;

        A_s <= x"0005";
        B_s <= x"0004";
        wait for 100ns;

        A_s <= x"0002";
        B_s <= x"0003";
        wait for 100ns;

    end process;
    
end Behavioral;
