library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CLA16bits is
  Port (
      A_16, B_16: in bit_vector(15 downto 0);
      cin : in bit;
      S : out bit_vector(15 downto 0);
      cout : out bit);
end CLA16bits;

architecture Behavioral of CLA16bits is
 
  signal p, g: bit_vector(3 downto 0);
   signal c : bit_vector(2 downto 0);  
begin


end Behavioral;
