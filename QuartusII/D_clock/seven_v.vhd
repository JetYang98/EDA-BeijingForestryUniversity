library ieee;
use ieee.std_logic_1164.all;
entity seven_v is
port(D: in integer range 0 to 9;
	S: out std_logic_vector(6 downto 0));
end seven_v;
architecture a of seven_v is
begin
	process(D)
	begin
		case D is
			when 0 => S <= "1111110";
			when 1 => S <= "0000110";
			when 2 => S <= "1101101";
			when 3 => S <= "1111001";
			when 4 => S <= "0110011";
			when 5 => S <= "1011011";
			when 6 => S <= "1011111";
			when 7 => S <= "1110000";
			when 8 => S <= "1111111";
			when 9 => S <= "1111011";
			when others => S <= "0000000";
		end case;
	end process;
end a;
