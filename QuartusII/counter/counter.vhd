library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port(clk, clr:in std_logic;
		q:buffer std_logic_vector(3 downto 0);
		cout:out std_logic);
end counter;

architecture one of counter is
begin
	process(clk, clr)
	begin
		if clr = '0' then
			q <= "0000";
		elsif clk'event and clk = '1' then
			if q = "1001" then q<="0000";
			else
				if q(0) = '0' then q(0) <= '1';
				else
					q(0)<='0';
					if q(1) = '0' then q(1)<='1';
					else q(1)<='0';
						 if q(2)='0' then q(2)<='1';
						else q(2)<='0';
							if q(3)='0' then q(3)<='1';
							else q(3)<='0';
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
		cout <= q(0) and q(1) and q(2) and q(3);
	end process;
end one;
