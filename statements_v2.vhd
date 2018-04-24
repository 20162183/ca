library ieee;
use ieee.std_logic_1164.all;


-- If you want the most significant bit of your bundle to be on the the first bit on the left you use downto keyword
entity statements_v2 is
  port (
    i_s : in  std_logic_vector(3 downto 0);
	o_x0 : out std_logic;
	o_x1 : out std_logic;
	o_x2 : out std_logic
    );
end statements_v2;
 
architecture dataflow of statements_v2 is
  signal w_tmp : std_logic;
begin
	
  o_x0 <= i_s(3) and i_s(2) and i_s(1) and i_s(0);

  o_x1  <= '1' when (i_s(3) and i_s(2) and i_s(1) and i_s(0)) = '1' else
          '0';
		  
  with (i_s(3) and i_s(2) and i_s(1) and i_s(0)) select
  o_x2 <= '1' when '1',
          '0' when others;
  
end dataflow;
