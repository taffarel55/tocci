entity and_gate_tb is
end and_gate_tb;
architecture teste of and_gate_tb is
	component and_gate is
		port (
			a: in bit;
			b: in bit;
			o: out bit	
		);
	end component;
	signal a,b,o : bit;
begin
	dut: and_gate port map (a=>a, b=>b, o=>o);
	process begin
		a <= '0';
		b <= '0';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		wait for 1 ns;

		assert false report "Fim de teste";
		wait;
	end process;
end teste;
