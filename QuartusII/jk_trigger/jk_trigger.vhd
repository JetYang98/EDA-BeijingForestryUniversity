library ieee;
use ieee.std_logic_1164.all;
entity jk_trigger is
port(j, k, clr, cls: in std_logic;
	clk: in std_logic;
	q, qn: buffer std_logic);
end jk_trigger;

architecture one of jk_trigger is
begin
	process(clk, clr, cls)
		variable jk: std_logic_vector(1 downto 0);
	begin
		jk := j & k;
		if clr = '0' then q <= '0'; qn <= '1';
		elsif cls = '0' then q <= '1'; qn <= '0';
		elsif clk'event and clk = '0' then
			case jk is
				when "00" => q <= q; qn <= qn;
				when "01" => q <= '0'; qn <= '1';
				when "10" => q <= '1'; qn <= '0';
				when "11" => q <= not q; qn <= not qn;
				when others => null;
			end case;
		end if;
	end process;
end one;
