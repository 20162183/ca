library ieee;
use ieee.std_logic_1164.all;


-- If you want the most significant bit of your bundle to be on the the first bit on the left you use downto keyword
entity statements is
  port (
	i_in : in  std_logic_vector(1 downto 0);
	o_out0 : out std_logic_vector(2 downto 0)
	);
end statements;
 
architecture dataflow of statements is
  signal w_tmp0 : std_logic;
  signal w_tmp1 : std_logic;
  signal w_tmp2 : std_logic;
begin

with i_in select
  o_out0 <= "011" when "00",
		  "100" when "01",
		  "101" when "10",
		  "110" when others;
		
end dataflow;
