-- Intermediate variables
-- Digital systems Tocci 10ed.
-- Mauricio Taffarel
-- 26/07/2020

entity fig3_51 is
	port (
		a,b,c	:in bit;
		y	:out bit
	     );
end fig3_51;
architecture ckt of fig3_51 is
	signal m :bit;
begin
	m <= a and b;
	y <= m or c;

end ckt;
