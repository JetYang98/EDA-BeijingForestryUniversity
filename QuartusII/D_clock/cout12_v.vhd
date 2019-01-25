library ieee;
use ieee.std_logic_1164.all;
entity cout12_v is
port(CLRN, LDN, EN, CLK: in std_logic;
	Da: in integer range 0 to 9;
	Db: in integer range 0 to 1;
	Qa: out integer range 0 to 9;
	Qb: out integer range 0 to 1);
end cout12_v;
architecture a of cout12_v is
begin 
	process(CLK)
		variable tmpa: integer range 0 to 9;
		variable tmpb: integer range 0 to 1;
	begin 
		if CLRN = '0' then tmpb := 0; tmpa := 0;
		else
			if(CLK'event and CLK = '1') then
				if LDN = '0' then
					tmpa := Da; tmpb := Db;
				elsif EN = '1' then
					if tmpa = 9 then
						tmpa := 0; tmpb := tmpb + 1;
					elsif(tmpb = 1 and tmpa = 1)then
						tmpb := 0; tmpa := 0;
					else tmpa := tmpa + 1;
					end if;
				end if;
			end if;
		end if;
		Qa <= tmpa; Qb <= tmpb;
	end process;
end a;