LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY yimaqi IS
	PORT(a,b,ena:IN BIT;
		  y:OUT BIT_VECTOR(3 DOWNTO 0));
   END yimaqi; 
ARCHITECTURE one OF yimaqi IS
BEGIN
  PROCESS(a,b,ena)
	VARIABLE ba:BIT_VECTOR(1 DOWNTO 0); 
	  BEGIN
		ba:=(b & a); 
		IF (ena='1') THEN y <= "1111";
		ELSE			
			CASE (ba) IS
				WHEN "00" => y <= "1110";
				WHEN "01" => y <= "1101";
				WHEN "10" => y <= "1011";
				WHEN "11" => y <= "0111";
				WHEN OTHERS=>NULL;
			END CASE;
		END IF;
  END PROCESS; 
END one; 
