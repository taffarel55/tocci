entity and_gate is
	port (
		a: in bit;
		b: in bit;
		o: out bit
	);	
end and_gate;
architecture ckt of and_gate is
begin
	o <= a or b;
end ckt;
