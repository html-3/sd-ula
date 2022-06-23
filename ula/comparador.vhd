----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:	14:44:37 05/19/2022
-- Design Name:
-- Module Name:	COMPARADOR - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COMPARADOR is
	Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC;
           E : out  STD_LOGIC;
           L : out  STD_LOGIC);
end COMPARADOR;

architecture Behavioral of COMPARADOR is

	signal G1, E1 : std_logic;
	
begin   
    -- X > Y
    G1 <= (( x(3) AND NOT(y(3)) )  --X3 > Y3
        OR ( (x(3) XNOR y(3)) AND (x(2) AND NOT(y(2))) ) -- X3 = Y3,  X2 > Y2
        OR ( (x(3) XNOR y(3)) AND (x(2) XNOR y(2)) AND (x(1) AND NOT(y(1))) )-- X3 = Y3, X2 = Y2,  X1>Y1
        OR ( (x(3) XNOR y(3)) AND (x(2) XNOR y(2)) AND (x(1) XNOR y(1)) AND (x(0) AND NOT(y(0))) )-- X3 = Y3,  X2 = Y2,  X1 = Y1,  X0 > Y0
        );
    
    -- X == Y
    
    E1 <= (x(0) XNOR y(0)) AND (x(1) XNOR y(1)) AND (x(2) XNOR y(2)) AND (x(3) XNOR y(3));--X0 = Y0, X1 = Y1,  X2 = Y2,  X3 = Y3  
    
    -- X < Y
    L <= G1 NOR E1;
    G <= G1;
	 E <= E1;
end Behavioral;
