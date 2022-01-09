-- Intermediate variables [TESTS]
-- Digital systems Tocci 10ed.
-- Mauricio Taffarel
-- 26/07/2020

entity fig3_51_tb is
end fig3_51_tb;

architecture ckt of fig3_51_tb is
	component fig3_51 is
		port (
			a,b,c	:in bit;
			y	:out bit
	     	);
	end component;
	signal a,b,c,y : bit;	
begin
	instance: fig3_51 port map(a=>a, b=>b, c=>c, y=>y);

	process begin
		a <= '0';
		b <= '0';
		c <= '0';
		wait for 1 ns;
		
		a <= '0';
		b <= '0';
		c <= '1';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		c <= '0';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		c <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		c <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '0';
		c <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '1';
		c <= '0';
		wait for 1 ns;

		a <= '1';
		b <= '1';
		c <= '1';
		wait for 1 ns;
		
		assert false report "END";
		wait;
	end process;
end ckt;
