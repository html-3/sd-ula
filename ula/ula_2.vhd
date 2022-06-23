----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:	14:43:34 05/19/2022
-- Design Name:
-- Module Name:	ULA - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ULA is
	Port (clock_50 : in std_logic; 	
       	s : in  STD_LOGIC_VECTOR (2 downto 0);
       	cout : out  STD_LOGIC;
       	overflow: out STD_LOGIC;
       	neg : out  STD_LOGIC;
       	zero : out  STD_LOGIC;
       	z : out  STD_LOGIC_VECTOR (7 downto 0));
end ULA;


architecture Behavioral of ULA is

component FULLADDER is port(x, y: in std_logic_vector; cin : in std_logic; cout, overflow : out std_logic; z : out std_logic_vector);
    end component;
component ADDER is port(x, y: in std_logic; cin : in std_logic; cout : out std_logic; z : out std_logic);
    end component;
component COMPLEMENTADOR is port(x : in std_logic_vector; s : in std_logic; z: out std_logic_vector);
    end component;
component CONTADOR is port(clock_50 : in std_logic; CONTADOR_out : out std_logic_vector);
    end component;
component COMPARADOR is port(x, y : in std_logic_vector; G, E, L : out std_logic);
    end component;
    signal x : std_logic_vector(3 downto 0);
    signal y : std_logic_vector(3 downto 0);
    signal x_i : std_logic_vector(3 downto 0) ;
    signal y_i : std_logic_vector(3 downto 0);
    signal y_j : std_logic_vector(3 downto 0);
    signal z_i : std_logic_vector(3 downto 0);
    signal z_j : std_logic_vector(3 downto 0);
    signal z_k : std_logic_vector(3 downto 0);
    signal CONTADOR_out : std_logic_vector(7 downto 0);
    signal c0: std_logic;
    signal comp: std_logic;
    signal s0,s1,s2,s3 : std_logic;
    signal G, E, L: std_logic;
    


begin
	 -- COMANDOS
	 -- s = (000) = SOMA           X + Y = Z
	 -- s = (001) = SUBSTRACAO     X - Y = Z
	 -- s = (010) = COMPLEMENTO-2     !X = Z
	 -- s = (011) = INCREMENTO     X + 1 = Z
	 -- s = (100) = XOR            X XOR Y = Z
	 -- s = (101) = OR             X OR Y = Z
	 -- s = (110) = DUPLICAR       X + X = Z
	 -- s = (111) = COMPARADOR     X>Y -> Z=G, X==Y -> Z=E, X<Y -> Z=L 
	 
	 -- CONTADOR para X e Y de 8 bits
	 Cont : CONTADOR port map (clock_50 => clock_50, CONTADOR_out => CONTADOR_out);
	 
	 CONTADORlooop:
	 for i in 0 to 3 generate 
		x(i) <= CONTADOR_out(i);
		y(i) <= CONTADOR_out(i + 4);
	 end generate CONTADORlooop;
	 
	 -- COMPLEMENTADOR-1 para Y 
	 s0 <= s(0) AND NOT(s(1)) AND NOT(s(2)); -- Complementa y para SUBTRAÇÃO APENAS
	 CompY: COMPLEMENTADOR port map (x => y, s => s0, z => y_i); 
	 
	 -- COMPLEMENTADOR-1 para X 
	 s1 <= NOT(s(2)) AND s(1) AND NOT s(0);-- Complementa x para COMPLEMENTO-2 APENAS
    CompX: COMPLEMENTADOR port map (x => x, s => s1, z => x_i);
	 
	 -- MUX para Y 
	muxlooop:
	for i in 0 to 3 generate 
		y_j(i) <= ( y_i(i) AND NOT(s(1)) ) OR ( x_i(i) AND ((NOT(s(0)) AND s(1) AND s(2))) ); -- Pasa y para SOMA, SUBTRAÇÃO, XOR e OR, x para DUPLICAR e 0 pro resto
	end generate muxlooop;
	 
	 -- Cin                                     
	 c0 <= NOT(s(2)) AND (s(1) OR s(0)); --cin entra para SUBTRAÇÃO(001), COMPLEMENTO-2(010) e INCREMENTO(011) 
    
	 -- SOMADOR de 4 bits
    Fa: FULLADDER port map (x => x_i, y => y_j, cin => c0, cout => cout, overflow => overflow, z => z_i);    
	 
	 -- Comparador de 4 bits
	Comp: COMPARADOR port map(x=> x, y=>y, G => G, E=> E, L =>L);
	comp <= (G AND s) OR (E AND s) OR (L and s);
	
	-- XOR
	xorloop:
	for i in 0 to 3 generate 
		z_j(i) <= (x(i) XOR y(i)); 
	end generate xorloop;
	
	-- OR
	orloop:
	for i in 0 to 3 generate 
		z_k(i) <= (x(i) OR y(i));
	end generate orloop;
	
	s2 <= (s(2) AND NOT(s(1)) AND NOT(s(0))); -- (100 XOR)
	s3 <= (s(2) AND NOT(s(1)) AND s(0));      -- (101 OR)
	
	zloop:
	for i in 0 to 3 generate            
	--                  FULLADDER                   XOR                 OR          COMPARADOR            
			z(i) <= (z_i(i) AND (s2 NOR s3)) OR (z_j(i) AND s2) OR (z_k(i) AND s3) OR comp;
	end generate zloop;
	
	--flags
	zero <= z NOR 0;
	
end Behavioral;