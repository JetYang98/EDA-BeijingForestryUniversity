library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity cout60_v is
port(CLRN, LDN, EN, CLK: in std_logic;
	Da: in std_logic_vector(3 downto 0);
	Db: in std_logic_vector(2 downto 0);
	Qa: out std_logic_vector(3 downto 0);
	Qb: out std_logic_vector(2 downto 0);
	RCO: out std_logic);
end cout60_v;
architecture a of cout60_v is
begin 
	process(CLK)
		variable tmpa: std_logic_vector(3 downto 0);
		variable tmpb: std_logic_vector(2 downto 0);
	begin
		if CLRN = '0' then tmpb := "000"; tmpa := "0000";
		else if (CLK'event and CLK = '1') then 
			if LDN = '0' then tmpa := Da; tmpb := Db;
			elsif EN = '1' then
			if tmpa = "1001" then tmpa := "0000";
			if tmpb = "101" then tmpb := "000";
			else tmpb := tmpb + 1;
			end if;
		else tmpa := tmpa + 1;
		end if;
		end if;
		end if;
		end if;
		Qa <= tmpa;
		Qb <= tmpb;
		RCO <= tmpb(0) and tmpb(2) and tmpa(0) and tmpa(3) and EN;
	end process;
end a;