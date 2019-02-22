library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final_test is
  --Port ( );
end final_test;

architecture Behavioral of final_test is
    component cla4bits is
      Port ( 
          A, B : in bit_vector(3 downto 0);
          cin : in bit;
          S : out bit_vector(3 downto 0);
          c3 : out bit);
    end component;

    signal As, Bs, Ss : bit_vector(3 downto 0);
    signal cins, c3s : bit;
    
begin
    uut1 : cla4bits port map (A => As, B => Bs, cin => cins, S => Ss, c3 => c3s);
    process1 : process begin   
        As <= "0100"; 
        Bs <= "0010";
        wait for 100ns;
        As <= "0010"; 
        Bs <= "0101";
        wait for 100ns;
        As <= "0000"; 
        Bs <= "0010";
        wait for 100ns;
        As <= "0000"; 
        Bs <= "0011";
        wait for 100ns;
        As <= "1000"; 
        Bs <= "0100";
        wait for 100ns;
        As <= "0001"; 
        Bs <= "0101";
        wait for 100ns;
        As <= "0100"; 
        Bs <= "0110";
        wait for 100ns;
        As <= "0010"; 
        Bs <= "0111";
        wait for 100ns;
        As <= "0000"; 
        Bs <= "1000";
        wait for 100ns;
        As <= "0000"; 
        Bs <= "1001";
        wait for 100ns;
        As <= "0000"; 
        Bs <= "1010";
        wait for 100ns;
        As <= "1000"; 
        Bs <= "1011";
        wait for 100ns;
        As <= "0010"; 
        Bs <= "1100";
        wait for 100ns;
        As <= "0000"; 
        Bs <= "1101";
        wait for 100ns;
        As <= "0010"; 
        Bs <= "1110";
        wait for 100ns;
        As <= "0101"; 
        Bs <= "1111";
        wait for 100ns;
    end process;
    
end Behavioral;
