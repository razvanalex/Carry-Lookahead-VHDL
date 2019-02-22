library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cla16bits is
	Port(
		A, B : in bit_vector(15 downto 0);
		cin : in bit;
		S : out bit_vector(15 downto 0);
		cout : out bit;
	);
end cla16bits;


architecture Behaviour of cla16bits is
	component cla4bits is
		Port ( 
			A, B : in bit_vector(3 downto 0);
			cin : in bit;
			S : out bit_vector(3 downto 0);
			cout : out bit);
			Pout, Gout : out bit_vector(3 downto 0)
		);
	end component;
	
	signal P_out, G_out, S_out : bit_vector(15 downto 0);
	signal P, G : bit_vector(3 downto 0);
	signal c : bit_vector(2 downto 0);
begin
	P(0) <= P_out(0) and P_out(1) and P_out(2) and P_out(3);
	P(1) <= P_out(4) and P_out(5) and P_out(6) and P_out(7);
	P(2) <= P_out(8) and P_out(9) and P_out(10) and P_out(11);
	P(3) <= P_out(12) and P_out(13) and P_out(14) and P_out(15);

	G(0) <= G_out(3) or 
			(P_out(3) and G_out(2)) or 
			(P_out(3) and P_out(2) and G_out(1)) or 
			(P_out(3) and P_out(2) and P_out(1) and G(0));

	G(1) <= G_out(7) or 
			(P_out(7) and G_out(6)) or 
			(P_out(7) and P_out(6) and G_out(5)) or 
			(P_out(7) and P_out(6) and P_out(5) and G(4));

	G(2) <= G_out(11) or 
			(P_out(11) and G_out(10)) or 
			(P_out(11) and P_out(10) and G_out(9)) or 
			(P_out(11) and P_out(10) and P_out(9) and G(8));

	G(3) <= G_out(15) or 
			(P_out(15) and G_out(14)) or 
			(P_out(15) and P_out(14) and G_out(13)) or 
			(P_out(15) and P_out(14) and P_out(13) and G(12));

	cla1 : cla4bit port map(A => A(3 downto 0), B => B(3 downto 0), cin => cin, 
			S => S_out(3 downto 0), Pout => P_out(3 downto 0), Gout => G_out(3 downto 0));
			
	cla2 : cla4bit port map(A => A(7 downto 4), B => B(7 downto 4), cin => c(0), 
			S => S_out(7 downto 4), Pout => P_out(7 downto 4), Gout => G_out(7 downto 4));
			
	cla3 : cla4bit port map(A => A(11 downto 8), B => B(11 downto 8), cin => c(1), 
			S => S_out(11 downto 8), Pout => P_out(11 downto 8), Gout => G_out(11 downto 8));
			
	cla4 : cla4bit port map(A => A(15 downto 12), B => B(15 downto 12), cin => c(2), 
			S => S_out(15 downto 12), Pout => P_out(15 downto 12), Gout => G_out(15 downto 12));
			
	c(0) <= G(0) or (P(0) and cin);
	c(1) <= G(1) or (P(1) and c(0));
	c(2) <= G(2) or (P(2) and c(1));
	cout <= G(3) or (P(3) and c(2));

end Behaviour
