library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cla4bits is
  Port ( 
      A, B : in bit_vector(3 downto 0);
      cin : in bit;
      S : out bit_vector(3 downto 0);
      cout : out bit);
  	  Pout, Gout : out bit_vector(3 downto 0);
end cla4bits;

architecture Conc of cla4bits is
    signal p, g: bit_vector(3 downto 0);
    signal c : bit_vector(2 downto 0);
begin
    g <= A and B;
    p <= A xor B;
    
    S(0) <= p(0) xor cin;
    S(1) <= p(1) xor c(0);
    S(2) <= p(2) xor c(1);
    S(3) <= p(3) xor c(2);
    
    c(0) <= g(0) or (p(0) and cin);
    c(1) <= g(1) or (p(1) and c(0));
    c(2) <= g(2) or (p(2) and c(1));
    cout <= g(3) or (p(3) and c(2));

	Pout <= p;
	Gout <= g;
end Conc;
