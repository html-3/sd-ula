--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ULA_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 23 13:05:55 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ULA -w -dir netgen/synthesis -ofmt vhdl -sim ULA.ngc ULA_synthesis.vhd 
-- Device	: xc3s700an-5-fgg484
-- Input file	: ULA.ngc
-- Output file	: /home/sd/ula/netgen/synthesis/ULA_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ULA
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ULA is
  port (
    neg : out STD_LOGIC; 
    cout : out STD_LOGIC; 
    overflow : out STD_LOGIC; 
    clock_50 : in STD_LOGIC := 'X'; 
    zero : out STD_LOGIC; 
    z : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    s : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end ULA;

architecture Structure of ULA is
  signal Comp_E126_0 : STD_LOGIC; 
  signal Comp_E153_1 : STD_LOGIC; 
  signal Comp_G143_2 : STD_LOGIC; 
  signal Cont_CONTADOR_temp_cmp_le0000 : STD_LOGIC; 
  signal Cont_CONTADOR_temp_not0001 : STD_LOGIC; 
  signal Cont_CONTADOR_temp_not00011 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_11_rt_16 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_2_rt_19 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_6_rt_24 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_9_rt_28 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_0_Q_29 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_10_Q : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_1_Q_31 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_3_Q_32 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_4_Q_33 : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_5_Q : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_7_Q : STD_LOGIC; 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_8_Q_36 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_cy_1_rt_39 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_cy_2_rt_41 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_cy_3_rt_43 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_cy_4_rt_45 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_cy_5_rt_47 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_cy_6_rt_49 : STD_LOGIC; 
  signal Cont_Mcount_CONTADOR_temp_xor_7_rt_51 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_10_rt_54 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_11_rt_56 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_12_rt_58 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_13_rt_60 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_14_rt_62 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_15_rt_64 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_16_rt_66 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_17_rt_68 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_18_rt_70 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_19_rt_72 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_1_rt_74 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_20_rt_76 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_21_rt_78 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_22_rt_80 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_23_rt_82 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_24_rt_84 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_25_rt_86 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_2_rt_88 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_3_rt_90 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_4_rt_92 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_5_rt_94 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_6_rt_96 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_7_rt_98 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_8_rt_100 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_cy_9_rt_102 : STD_LOGIC; 
  signal Cont_Mcount_slow_clock_xor_26_rt_104 : STD_LOGIC; 
  signal Fa_c1 : STD_LOGIC; 
  signal Fa_c2 : STD_LOGIC; 
  signal Fa_c3 : STD_LOGIC; 
  signal G : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal clock_50_BUFGP_187 : STD_LOGIC; 
  signal cout_OBUF_189 : STD_LOGIC; 
  signal neg_OBUF_191 : STD_LOGIC; 
  signal overflow_OBUF_193 : STD_LOGIC; 
  signal s1 : STD_LOGIC; 
  signal s_0_IBUF_198 : STD_LOGIC; 
  signal s_1_IBUF_199 : STD_LOGIC; 
  signal s_2_IBUF_200 : STD_LOGIC; 
  signal z_0_OBUF_208 : STD_LOGIC; 
  signal z_1_OBUF_209 : STD_LOGIC; 
  signal z_2_OBUF_210 : STD_LOGIC; 
  signal z_3_OBUF_211 : STD_LOGIC; 
  signal z_OUT_0_or00002 : STD_LOGIC; 
  signal z_OUT_0_or00003_213 : STD_LOGIC; 
  signal z_OUT_0_or0000_f5_214 : STD_LOGIC; 
  signal z_OUT_1_or0000159_215 : STD_LOGIC; 
  signal z_OUT_1_or00002_216 : STD_LOGIC; 
  signal z_OUT_2_or0000156_217 : STD_LOGIC; 
  signal z_OUT_2_or0000193_218 : STD_LOGIC; 
  signal z_OUT_3_or000114_219 : STD_LOGIC; 
  signal zero_OBUF_221 : STD_LOGIC; 
  signal Cont_CONTADOR_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Cont_Mcount_CONTADOR_temp_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Cont_Mcount_CONTADOR_temp_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Cont_Mcount_slow_clock_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Cont_Mcount_slow_clock_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Cont_slow_clock : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal y_j : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  Cont_slow_clock_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(0),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(0)
    );
  Cont_slow_clock_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(1),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(1)
    );
  Cont_slow_clock_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(2),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(2)
    );
  Cont_slow_clock_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(3),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(3)
    );
  Cont_slow_clock_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(4),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(4)
    );
  Cont_slow_clock_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(5),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(5)
    );
  Cont_slow_clock_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(6),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(6)
    );
  Cont_slow_clock_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(7),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(7)
    );
  Cont_slow_clock_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(8),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(8)
    );
  Cont_slow_clock_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(9),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(9)
    );
  Cont_slow_clock_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(10),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(10)
    );
  Cont_slow_clock_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(11),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(11)
    );
  Cont_slow_clock_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(12),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(12)
    );
  Cont_slow_clock_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(13),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(13)
    );
  Cont_slow_clock_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(14),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(14)
    );
  Cont_slow_clock_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(15),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(15)
    );
  Cont_slow_clock_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(16),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(16)
    );
  Cont_slow_clock_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(17),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(17)
    );
  Cont_slow_clock_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(18),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(18)
    );
  Cont_slow_clock_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(19),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(19)
    );
  Cont_slow_clock_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(20),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(20)
    );
  Cont_slow_clock_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(21),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(21)
    );
  Cont_slow_clock_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(22),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(22)
    );
  Cont_slow_clock_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(23),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(23)
    );
  Cont_slow_clock_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(24),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(24)
    );
  Cont_slow_clock_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(25),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(25)
    );
  Cont_slow_clock_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      D => Result(26),
      R => Cont_CONTADOR_temp_not0001,
      Q => Cont_slow_clock(26)
    );
  Cont_CONTADOR_temp_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_0_1,
      Q => Cont_CONTADOR_temp(0)
    );
  Cont_CONTADOR_temp_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_1_1,
      Q => Cont_CONTADOR_temp(1)
    );
  Cont_CONTADOR_temp_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_2_1,
      Q => Cont_CONTADOR_temp(2)
    );
  Cont_CONTADOR_temp_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_3_1,
      Q => Cont_CONTADOR_temp(3)
    );
  Cont_CONTADOR_temp_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_4_1,
      Q => Cont_CONTADOR_temp(4)
    );
  Cont_CONTADOR_temp_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_5_1,
      Q => Cont_CONTADOR_temp(5)
    );
  Cont_CONTADOR_temp_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_6_1,
      Q => Cont_CONTADOR_temp(6)
    );
  Cont_CONTADOR_temp_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_50_BUFGP_187,
      CE => Cont_CONTADOR_temp_not00011,
      D => Result_7_1,
      Q => Cont_CONTADOR_temp(7)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Cont_slow_clock(0),
      I1 => Cont_slow_clock(1),
      I2 => Cont_slow_clock(2),
      I3 => Cont_slow_clock(3),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_0_Q_29
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_0_Q_29,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(0)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Cont_slow_clock(4),
      I1 => Cont_slow_clock(5),
      I2 => Cont_slow_clock(6),
      I3 => Cont_slow_clock(7),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_1_Q_31
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(0),
      DI => N0,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_1_Q_31,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(1)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(1),
      DI => N1,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_2_rt_19,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(2)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Cont_slow_clock(9),
      I1 => Cont_slow_clock(10),
      I2 => Cont_slow_clock(11),
      I3 => Cont_slow_clock(12),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_3_Q_32
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(2),
      DI => N0,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_3_Q_32,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(3)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Cont_slow_clock(13),
      I1 => Cont_slow_clock(14),
      I2 => Cont_slow_clock(15),
      I3 => Cont_slow_clock(16),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_4_Q_33
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(3),
      DI => N1,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_4_Q_33,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(4)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(4),
      DI => N0,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_5_Q,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(5)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(5),
      DI => N1,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_6_rt_24,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(6)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(6),
      DI => N0,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_7_Q,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(7)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Cont_slow_clock(20),
      I1 => Cont_slow_clock(21),
      I2 => Cont_slow_clock(22),
      I3 => Cont_slow_clock(23),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_8_Q_36
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(7),
      DI => N1,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_8_Q_36,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(8)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(8),
      DI => N1,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_9_rt_28,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(9)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(9),
      DI => N0,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_10_Q,
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(10)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy(10),
      DI => N1,
      S => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_11_rt_16,
      O => Cont_CONTADOR_temp_cmp_le0000
    );
  Cont_Mcount_slow_clock_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Cont_Mcount_slow_clock_lut(0),
      O => Cont_Mcount_slow_clock_cy(0)
    );
  Cont_Mcount_slow_clock_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Cont_Mcount_slow_clock_lut(0),
      O => Result(0)
    );
  Cont_Mcount_slow_clock_cy_1_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(0),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_1_rt_74,
      O => Cont_Mcount_slow_clock_cy(1)
    );
  Cont_Mcount_slow_clock_xor_1_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(0),
      LI => Cont_Mcount_slow_clock_cy_1_rt_74,
      O => Result(1)
    );
  Cont_Mcount_slow_clock_cy_2_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(1),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_2_rt_88,
      O => Cont_Mcount_slow_clock_cy(2)
    );
  Cont_Mcount_slow_clock_xor_2_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(1),
      LI => Cont_Mcount_slow_clock_cy_2_rt_88,
      O => Result(2)
    );
  Cont_Mcount_slow_clock_cy_3_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(2),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_3_rt_90,
      O => Cont_Mcount_slow_clock_cy(3)
    );
  Cont_Mcount_slow_clock_xor_3_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(2),
      LI => Cont_Mcount_slow_clock_cy_3_rt_90,
      O => Result(3)
    );
  Cont_Mcount_slow_clock_cy_4_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(3),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_4_rt_92,
      O => Cont_Mcount_slow_clock_cy(4)
    );
  Cont_Mcount_slow_clock_xor_4_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(3),
      LI => Cont_Mcount_slow_clock_cy_4_rt_92,
      O => Result(4)
    );
  Cont_Mcount_slow_clock_cy_5_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(4),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_5_rt_94,
      O => Cont_Mcount_slow_clock_cy(5)
    );
  Cont_Mcount_slow_clock_xor_5_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(4),
      LI => Cont_Mcount_slow_clock_cy_5_rt_94,
      O => Result(5)
    );
  Cont_Mcount_slow_clock_cy_6_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(5),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_6_rt_96,
      O => Cont_Mcount_slow_clock_cy(6)
    );
  Cont_Mcount_slow_clock_xor_6_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(5),
      LI => Cont_Mcount_slow_clock_cy_6_rt_96,
      O => Result(6)
    );
  Cont_Mcount_slow_clock_cy_7_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(6),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_7_rt_98,
      O => Cont_Mcount_slow_clock_cy(7)
    );
  Cont_Mcount_slow_clock_xor_7_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(6),
      LI => Cont_Mcount_slow_clock_cy_7_rt_98,
      O => Result(7)
    );
  Cont_Mcount_slow_clock_cy_8_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(7),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_8_rt_100,
      O => Cont_Mcount_slow_clock_cy(8)
    );
  Cont_Mcount_slow_clock_xor_8_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(7),
      LI => Cont_Mcount_slow_clock_cy_8_rt_100,
      O => Result(8)
    );
  Cont_Mcount_slow_clock_cy_9_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(8),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_9_rt_102,
      O => Cont_Mcount_slow_clock_cy(9)
    );
  Cont_Mcount_slow_clock_xor_9_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(8),
      LI => Cont_Mcount_slow_clock_cy_9_rt_102,
      O => Result(9)
    );
  Cont_Mcount_slow_clock_cy_10_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(9),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_10_rt_54,
      O => Cont_Mcount_slow_clock_cy(10)
    );
  Cont_Mcount_slow_clock_xor_10_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(9),
      LI => Cont_Mcount_slow_clock_cy_10_rt_54,
      O => Result(10)
    );
  Cont_Mcount_slow_clock_cy_11_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(10),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_11_rt_56,
      O => Cont_Mcount_slow_clock_cy(11)
    );
  Cont_Mcount_slow_clock_xor_11_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(10),
      LI => Cont_Mcount_slow_clock_cy_11_rt_56,
      O => Result(11)
    );
  Cont_Mcount_slow_clock_cy_12_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(11),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_12_rt_58,
      O => Cont_Mcount_slow_clock_cy(12)
    );
  Cont_Mcount_slow_clock_xor_12_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(11),
      LI => Cont_Mcount_slow_clock_cy_12_rt_58,
      O => Result(12)
    );
  Cont_Mcount_slow_clock_cy_13_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(12),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_13_rt_60,
      O => Cont_Mcount_slow_clock_cy(13)
    );
  Cont_Mcount_slow_clock_xor_13_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(12),
      LI => Cont_Mcount_slow_clock_cy_13_rt_60,
      O => Result(13)
    );
  Cont_Mcount_slow_clock_cy_14_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(13),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_14_rt_62,
      O => Cont_Mcount_slow_clock_cy(14)
    );
  Cont_Mcount_slow_clock_xor_14_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(13),
      LI => Cont_Mcount_slow_clock_cy_14_rt_62,
      O => Result(14)
    );
  Cont_Mcount_slow_clock_cy_15_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(14),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_15_rt_64,
      O => Cont_Mcount_slow_clock_cy(15)
    );
  Cont_Mcount_slow_clock_xor_15_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(14),
      LI => Cont_Mcount_slow_clock_cy_15_rt_64,
      O => Result(15)
    );
  Cont_Mcount_slow_clock_cy_16_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(15),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_16_rt_66,
      O => Cont_Mcount_slow_clock_cy(16)
    );
  Cont_Mcount_slow_clock_xor_16_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(15),
      LI => Cont_Mcount_slow_clock_cy_16_rt_66,
      O => Result(16)
    );
  Cont_Mcount_slow_clock_cy_17_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(16),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_17_rt_68,
      O => Cont_Mcount_slow_clock_cy(17)
    );
  Cont_Mcount_slow_clock_xor_17_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(16),
      LI => Cont_Mcount_slow_clock_cy_17_rt_68,
      O => Result(17)
    );
  Cont_Mcount_slow_clock_cy_18_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(17),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_18_rt_70,
      O => Cont_Mcount_slow_clock_cy(18)
    );
  Cont_Mcount_slow_clock_xor_18_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(17),
      LI => Cont_Mcount_slow_clock_cy_18_rt_70,
      O => Result(18)
    );
  Cont_Mcount_slow_clock_cy_19_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(18),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_19_rt_72,
      O => Cont_Mcount_slow_clock_cy(19)
    );
  Cont_Mcount_slow_clock_xor_19_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(18),
      LI => Cont_Mcount_slow_clock_cy_19_rt_72,
      O => Result(19)
    );
  Cont_Mcount_slow_clock_cy_20_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(19),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_20_rt_76,
      O => Cont_Mcount_slow_clock_cy(20)
    );
  Cont_Mcount_slow_clock_xor_20_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(19),
      LI => Cont_Mcount_slow_clock_cy_20_rt_76,
      O => Result(20)
    );
  Cont_Mcount_slow_clock_cy_21_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(20),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_21_rt_78,
      O => Cont_Mcount_slow_clock_cy(21)
    );
  Cont_Mcount_slow_clock_xor_21_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(20),
      LI => Cont_Mcount_slow_clock_cy_21_rt_78,
      O => Result(21)
    );
  Cont_Mcount_slow_clock_cy_22_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(21),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_22_rt_80,
      O => Cont_Mcount_slow_clock_cy(22)
    );
  Cont_Mcount_slow_clock_xor_22_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(21),
      LI => Cont_Mcount_slow_clock_cy_22_rt_80,
      O => Result(22)
    );
  Cont_Mcount_slow_clock_cy_23_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(22),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_23_rt_82,
      O => Cont_Mcount_slow_clock_cy(23)
    );
  Cont_Mcount_slow_clock_xor_23_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(22),
      LI => Cont_Mcount_slow_clock_cy_23_rt_82,
      O => Result(23)
    );
  Cont_Mcount_slow_clock_cy_24_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(23),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_24_rt_84,
      O => Cont_Mcount_slow_clock_cy(24)
    );
  Cont_Mcount_slow_clock_xor_24_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(23),
      LI => Cont_Mcount_slow_clock_cy_24_rt_84,
      O => Result(24)
    );
  Cont_Mcount_slow_clock_cy_25_Q : MUXCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(24),
      DI => N0,
      S => Cont_Mcount_slow_clock_cy_25_rt_86,
      O => Cont_Mcount_slow_clock_cy(25)
    );
  Cont_Mcount_slow_clock_xor_25_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(24),
      LI => Cont_Mcount_slow_clock_cy_25_rt_86,
      O => Result(25)
    );
  Cont_Mcount_slow_clock_xor_26_Q : XORCY
    port map (
      CI => Cont_Mcount_slow_clock_cy(25),
      LI => Cont_Mcount_slow_clock_xor_26_rt_104,
      O => Result(26)
    );
  Cont_Mcount_CONTADOR_temp_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Cont_Mcount_CONTADOR_temp_lut(0),
      O => Cont_Mcount_CONTADOR_temp_cy(0)
    );
  Cont_Mcount_CONTADOR_temp_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Cont_Mcount_CONTADOR_temp_lut(0),
      O => Result_0_1
    );
  Cont_Mcount_CONTADOR_temp_cy_1_Q : MUXCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(0),
      DI => N0,
      S => Cont_Mcount_CONTADOR_temp_cy_1_rt_39,
      O => Cont_Mcount_CONTADOR_temp_cy(1)
    );
  Cont_Mcount_CONTADOR_temp_xor_1_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(0),
      LI => Cont_Mcount_CONTADOR_temp_cy_1_rt_39,
      O => Result_1_1
    );
  Cont_Mcount_CONTADOR_temp_cy_2_Q : MUXCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(1),
      DI => N0,
      S => Cont_Mcount_CONTADOR_temp_cy_2_rt_41,
      O => Cont_Mcount_CONTADOR_temp_cy(2)
    );
  Cont_Mcount_CONTADOR_temp_xor_2_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(1),
      LI => Cont_Mcount_CONTADOR_temp_cy_2_rt_41,
      O => Result_2_1
    );
  Cont_Mcount_CONTADOR_temp_cy_3_Q : MUXCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(2),
      DI => N0,
      S => Cont_Mcount_CONTADOR_temp_cy_3_rt_43,
      O => Cont_Mcount_CONTADOR_temp_cy(3)
    );
  Cont_Mcount_CONTADOR_temp_xor_3_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(2),
      LI => Cont_Mcount_CONTADOR_temp_cy_3_rt_43,
      O => Result_3_1
    );
  Cont_Mcount_CONTADOR_temp_cy_4_Q : MUXCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(3),
      DI => N0,
      S => Cont_Mcount_CONTADOR_temp_cy_4_rt_45,
      O => Cont_Mcount_CONTADOR_temp_cy(4)
    );
  Cont_Mcount_CONTADOR_temp_xor_4_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(3),
      LI => Cont_Mcount_CONTADOR_temp_cy_4_rt_45,
      O => Result_4_1
    );
  Cont_Mcount_CONTADOR_temp_cy_5_Q : MUXCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(4),
      DI => N0,
      S => Cont_Mcount_CONTADOR_temp_cy_5_rt_47,
      O => Cont_Mcount_CONTADOR_temp_cy(5)
    );
  Cont_Mcount_CONTADOR_temp_xor_5_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(4),
      LI => Cont_Mcount_CONTADOR_temp_cy_5_rt_47,
      O => Result_5_1
    );
  Cont_Mcount_CONTADOR_temp_cy_6_Q : MUXCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(5),
      DI => N0,
      S => Cont_Mcount_CONTADOR_temp_cy_6_rt_49,
      O => Cont_Mcount_CONTADOR_temp_cy(6)
    );
  Cont_Mcount_CONTADOR_temp_xor_6_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(5),
      LI => Cont_Mcount_CONTADOR_temp_cy_6_rt_49,
      O => Result_6_1
    );
  Cont_Mcount_CONTADOR_temp_xor_7_Q : XORCY
    port map (
      CI => Cont_Mcount_CONTADOR_temp_cy(6),
      LI => Cont_Mcount_CONTADOR_temp_xor_7_rt_51,
      O => Result_7_1
    );
  Comp_G143 : LUT4
    generic map(
      INIT => X"08AE"
    )
    port map (
      I0 => Cont_CONTADOR_temp(1),
      I1 => Cont_CONTADOR_temp(0),
      I2 => Cont_CONTADOR_temp(4),
      I3 => Cont_CONTADOR_temp(5),
      O => Comp_G143_2
    );
  Comp_E126 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Cont_CONTADOR_temp(0),
      I1 => Cont_CONTADOR_temp(4),
      I2 => Cont_CONTADOR_temp(1),
      I3 => Cont_CONTADOR_temp(5),
      O => Comp_E126_0
    );
  Comp_E153 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Cont_CONTADOR_temp(2),
      I1 => Cont_CONTADOR_temp(6),
      I2 => Cont_CONTADOR_temp(3),
      I3 => Cont_CONTADOR_temp(7),
      O => Comp_E153_1
    );
  Fa_Fa3_cout1 : LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      I0 => Fa_c3,
      I1 => Cont_CONTADOR_temp(3),
      I2 => s1,
      I3 => y_j(3),
      O => cout_OBUF_189
    );
  Fa_overflow1 : LUT4
    generic map(
      INIT => X"4128"
    )
    port map (
      I0 => y_j(3),
      I1 => Cont_CONTADOR_temp(3),
      I2 => s1,
      I3 => Fa_c3,
      O => overflow_OBUF_193
    );
  z_OUT_0_or00003 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => G,
      I2 => s_0_IBUF_198,
      O => z_OUT_0_or00002
    );
  z_OUT_0_or00004 : LUT4
    generic map(
      INIT => X"FFE6"
    )
    port map (
      I0 => Cont_CONTADOR_temp(4),
      I1 => Cont_CONTADOR_temp(0),
      I2 => s_0_IBUF_198,
      I3 => s1,
      O => z_OUT_0_or00003_213
    );
  z_OUT_0_or0000_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => z_OUT_0_or00003_213,
      S => s_2_IBUF_200,
      O => z_OUT_0_or0000_f5_214
    );
  z_OUT_0_or0000_f6 : MUXF6
    port map (
      I0 => z_OUT_0_or0000_f5_214,
      I1 => z_OUT_0_or00002,
      S => s_1_IBUF_199,
      O => z_0_OBUF_208
    );
  Fa_Fa2_cout1 : LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      I0 => Fa_c2,
      I1 => Cont_CONTADOR_temp(2),
      I2 => s1,
      I3 => y_j(2),
      O => Fa_c3
    );
  z_OUT_3_or000114 : LUT3
    generic map(
      INIT => X"DA"
    )
    port map (
      I0 => Cont_CONTADOR_temp(3),
      I1 => s_0_IBUF_198,
      I2 => Cont_CONTADOR_temp(7),
      O => z_OUT_3_or000114_219
    );
  Fa_Fa1_cout1 : LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      I0 => Fa_c1,
      I1 => Cont_CONTADOR_temp(1),
      I2 => s1,
      I3 => y_j(1),
      O => Fa_c2
    );
  s11 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => s_1_IBUF_199,
      I2 => s_0_IBUF_198,
      O => s1
    );
  zero1 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => z_1_OBUF_209,
      I1 => z_3_OBUF_211,
      I2 => z_0_OBUF_208,
      I3 => z_2_OBUF_210,
      O => zero_OBUF_221
    );
  z_OUT_1_or0000203 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => z_OUT_1_or00002_216,
      I2 => z_OUT_1_or0000159_215,
      I3 => s_1_IBUF_199,
      O => z_1_OBUF_209
    );
  z_OUT_2_or0000211 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => z_OUT_2_or0000193_218,
      I2 => z_OUT_2_or0000156_217,
      I3 => s_1_IBUF_199,
      O => z_2_OBUF_210
    );
  s_2_IBUF : IBUF
    port map (
      I => s(2),
      O => s_2_IBUF_200
    );
  s_1_IBUF : IBUF
    port map (
      I => s(1),
      O => s_1_IBUF_199
    );
  s_0_IBUF : IBUF
    port map (
      I => s(0),
      O => s_0_IBUF_198
    );
  neg_OBUF : OBUF
    port map (
      I => neg_OBUF_191,
      O => neg
    );
  cout_OBUF : OBUF
    port map (
      I => cout_OBUF_189,
      O => cout
    );
  overflow_OBUF : OBUF
    port map (
      I => overflow_OBUF_193,
      O => overflow
    );
  zero_OBUF : OBUF
    port map (
      I => zero_OBUF_221,
      O => zero
    );
  z_3_OBUF : OBUF
    port map (
      I => z_3_OBUF_211,
      O => z(3)
    );
  z_2_OBUF : OBUF
    port map (
      I => z_2_OBUF_210,
      O => z(2)
    );
  z_1_OBUF : OBUF
    port map (
      I => z_1_OBUF_209,
      O => z(1)
    );
  z_0_OBUF : OBUF
    port map (
      I => z_0_OBUF_208,
      O => z(0)
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(8),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_2_rt_19
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(18),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_6_rt_24
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(24),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_9_rt_28
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(26),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_cy_11_rt_16
    );
  Cont_Mcount_slow_clock_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(1),
      O => Cont_Mcount_slow_clock_cy_1_rt_74
    );
  Cont_Mcount_slow_clock_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(2),
      O => Cont_Mcount_slow_clock_cy_2_rt_88
    );
  Cont_Mcount_slow_clock_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(3),
      O => Cont_Mcount_slow_clock_cy_3_rt_90
    );
  Cont_Mcount_slow_clock_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(4),
      O => Cont_Mcount_slow_clock_cy_4_rt_92
    );
  Cont_Mcount_slow_clock_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(5),
      O => Cont_Mcount_slow_clock_cy_5_rt_94
    );
  Cont_Mcount_slow_clock_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(6),
      O => Cont_Mcount_slow_clock_cy_6_rt_96
    );
  Cont_Mcount_slow_clock_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(7),
      O => Cont_Mcount_slow_clock_cy_7_rt_98
    );
  Cont_Mcount_slow_clock_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(8),
      O => Cont_Mcount_slow_clock_cy_8_rt_100
    );
  Cont_Mcount_slow_clock_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(9),
      O => Cont_Mcount_slow_clock_cy_9_rt_102
    );
  Cont_Mcount_slow_clock_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(10),
      O => Cont_Mcount_slow_clock_cy_10_rt_54
    );
  Cont_Mcount_slow_clock_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(11),
      O => Cont_Mcount_slow_clock_cy_11_rt_56
    );
  Cont_Mcount_slow_clock_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(12),
      O => Cont_Mcount_slow_clock_cy_12_rt_58
    );
  Cont_Mcount_slow_clock_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(13),
      O => Cont_Mcount_slow_clock_cy_13_rt_60
    );
  Cont_Mcount_slow_clock_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(14),
      O => Cont_Mcount_slow_clock_cy_14_rt_62
    );
  Cont_Mcount_slow_clock_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(15),
      O => Cont_Mcount_slow_clock_cy_15_rt_64
    );
  Cont_Mcount_slow_clock_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(16),
      O => Cont_Mcount_slow_clock_cy_16_rt_66
    );
  Cont_Mcount_slow_clock_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(17),
      O => Cont_Mcount_slow_clock_cy_17_rt_68
    );
  Cont_Mcount_slow_clock_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(18),
      O => Cont_Mcount_slow_clock_cy_18_rt_70
    );
  Cont_Mcount_slow_clock_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(19),
      O => Cont_Mcount_slow_clock_cy_19_rt_72
    );
  Cont_Mcount_slow_clock_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(20),
      O => Cont_Mcount_slow_clock_cy_20_rt_76
    );
  Cont_Mcount_slow_clock_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(21),
      O => Cont_Mcount_slow_clock_cy_21_rt_78
    );
  Cont_Mcount_slow_clock_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(22),
      O => Cont_Mcount_slow_clock_cy_22_rt_80
    );
  Cont_Mcount_slow_clock_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(23),
      O => Cont_Mcount_slow_clock_cy_23_rt_82
    );
  Cont_Mcount_slow_clock_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(24),
      O => Cont_Mcount_slow_clock_cy_24_rt_84
    );
  Cont_Mcount_slow_clock_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(25),
      O => Cont_Mcount_slow_clock_cy_25_rt_86
    );
  Cont_Mcount_CONTADOR_temp_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(1),
      O => Cont_Mcount_CONTADOR_temp_cy_1_rt_39
    );
  Cont_Mcount_CONTADOR_temp_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(2),
      O => Cont_Mcount_CONTADOR_temp_cy_2_rt_41
    );
  Cont_Mcount_CONTADOR_temp_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(3),
      O => Cont_Mcount_CONTADOR_temp_cy_3_rt_43
    );
  Cont_Mcount_CONTADOR_temp_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(4),
      O => Cont_Mcount_CONTADOR_temp_cy_4_rt_45
    );
  Cont_Mcount_CONTADOR_temp_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(5),
      O => Cont_Mcount_CONTADOR_temp_cy_5_rt_47
    );
  Cont_Mcount_CONTADOR_temp_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(6),
      O => Cont_Mcount_CONTADOR_temp_cy_6_rt_49
    );
  Cont_Mcount_slow_clock_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_slow_clock(26),
      O => Cont_Mcount_slow_clock_xor_26_rt_104
    );
  Cont_Mcount_CONTADOR_temp_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cont_CONTADOR_temp(7),
      O => Cont_Mcount_CONTADOR_temp_xor_7_rt_51
    );
  z_OUT_1_or0000159_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => Fa_c1,
      I1 => s1,
      I2 => y_j(1),
      O => N41
    );
  z_OUT_1_or0000159 : LUT4
    generic map(
      INIT => X"DFFA"
    )
    port map (
      I0 => Cont_CONTADOR_temp(1),
      I1 => s_0_IBUF_198,
      I2 => Cont_CONTADOR_temp(5),
      I3 => N41,
      O => z_OUT_1_or0000159_215
    );
  z_OUT_2_or0000156_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => Fa_c2,
      I1 => s1,
      I2 => y_j(2),
      O => N43
    );
  z_OUT_2_or0000156 : LUT4
    generic map(
      INIT => X"DFFA"
    )
    port map (
      I0 => Cont_CONTADOR_temp(2),
      I1 => s_0_IBUF_198,
      I2 => Cont_CONTADOR_temp(6),
      I3 => N43,
      O => z_OUT_2_or0000156_217
    );
  Comp_G170_SW0 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => Cont_CONTADOR_temp(2),
      I1 => Comp_G143_2,
      I2 => Cont_CONTADOR_temp(6),
      O => N45
    );
  Comp_G170 : LUT3
    generic map(
      INIT => X"71"
    )
    port map (
      I0 => Cont_CONTADOR_temp(7),
      I1 => N45,
      I2 => Cont_CONTADOR_temp(3),
      O => G
    );
  z_OUT_3_or000175_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => Cont_CONTADOR_temp(3),
      I1 => Fa_c3,
      I2 => y_j(3),
      O => N47
    );
  z_OUT_3_or000175 : LUT4
    generic map(
      INIT => X"5040"
    )
    port map (
      I0 => s_1_IBUF_199,
      I1 => z_OUT_3_or000114_219,
      I2 => s_2_IBUF_200,
      I3 => N47,
      O => z_3_OBUF_211
    );
  z_OUT_1_or00002 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Comp_E126_0,
      I1 => Comp_E153_1,
      I2 => s_0_IBUF_198,
      I3 => s_1_IBUF_199,
      O => z_OUT_1_or00002_216
    );
  neg1 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => z_OUT_3_or000114_219,
      I2 => N47,
      I3 => s_1_IBUF_199,
      O => neg_OBUF_191
    );
  z_OUT_2_or0000193_SW0 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => s_0_IBUF_198,
      I1 => s_1_IBUF_199,
      I2 => Comp_E126_0,
      I3 => Comp_E153_1,
      O => N49
    );
  z_OUT_2_or0000193 : LUT4
    generic map(
      INIT => X"0D04"
    )
    port map (
      I0 => Cont_CONTADOR_temp(3),
      I1 => N45,
      I2 => N49,
      I3 => Cont_CONTADOR_temp(7),
      O => z_OUT_2_or0000193_218
    );
  y_j_3_or0000 : MUXF5
    port map (
      I0 => N51,
      I1 => N52,
      S => Cont_CONTADOR_temp(3),
      O => y_j(3)
    );
  y_j_3_or0000_F : LUT4
    generic map(
      INIT => X"090A"
    )
    port map (
      I0 => Cont_CONTADOR_temp(7),
      I1 => s_2_IBUF_200,
      I2 => s_1_IBUF_199,
      I3 => s_0_IBUF_198,
      O => N51
    );
  y_j_3_or0000_G : LUT4
    generic map(
      INIT => X"2B18"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => s_1_IBUF_199,
      I2 => s_0_IBUF_198,
      I3 => Cont_CONTADOR_temp(7),
      O => N52
    );
  Fa_Fa0_cout : MUXF5
    port map (
      I0 => N53,
      I1 => N54,
      S => Cont_CONTADOR_temp(0),
      O => Fa_c1
    );
  Fa_Fa0_cout_F : LUT4
    generic map(
      INIT => X"0414"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => s_1_IBUF_199,
      I2 => s_0_IBUF_198,
      I3 => Cont_CONTADOR_temp(4),
      O => N53
    );
  Fa_Fa0_cout_G : LUT4
    generic map(
      INIT => X"6F64"
    )
    port map (
      I0 => s_2_IBUF_200,
      I1 => s_0_IBUF_198,
      I2 => s_1_IBUF_199,
      I3 => Cont_CONTADOR_temp(4),
      O => N54
    );
  y_j_2_or0000 : MUXF5
    port map (
      I0 => N55,
      I1 => N56,
      S => Cont_CONTADOR_temp(6),
      O => y_j(2)
    );
  y_j_2_or0000_F : LUT4
    generic map(
      INIT => X"4202"
    )
    port map (
      I0 => s_0_IBUF_198,
      I1 => s_2_IBUF_200,
      I2 => s_1_IBUF_199,
      I3 => Cont_CONTADOR_temp(2),
      O => N55
    );
  y_j_2_or0000_G : LUT4
    generic map(
      INIT => X"7151"
    )
    port map (
      I0 => s_1_IBUF_199,
      I1 => s_0_IBUF_198,
      I2 => s_2_IBUF_200,
      I3 => Cont_CONTADOR_temp(2),
      O => N56
    );
  y_j_1_or0000 : MUXF5
    port map (
      I0 => N57,
      I1 => N58,
      S => Cont_CONTADOR_temp(5),
      O => y_j(1)
    );
  y_j_1_or0000_F : LUT4
    generic map(
      INIT => X"4202"
    )
    port map (
      I0 => s_0_IBUF_198,
      I1 => s_2_IBUF_200,
      I2 => s_1_IBUF_199,
      I3 => Cont_CONTADOR_temp(1),
      O => N57
    );
  y_j_1_or0000_G : LUT4
    generic map(
      INIT => X"7151"
    )
    port map (
      I0 => s_1_IBUF_199,
      I1 => s_0_IBUF_198,
      I2 => s_2_IBUF_200,
      I3 => Cont_CONTADOR_temp(1),
      O => N58
    );
  clock_50_BUFGP : BUFGP
    port map (
      I => clock_50,
      O => clock_50_BUFGP_187
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_5_INV_0 : INV
    port map (
      I => Cont_slow_clock(17),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_5_Q
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_7_INV_0 : INV
    port map (
      I => Cont_slow_clock(19),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_7_Q
    );
  Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_10_INV_0 : INV
    port map (
      I => Cont_slow_clock(25),
      O => Cont_Mcompar_CONTADOR_temp_cmp_le0000_lut_10_Q
    );
  Cont_Mcount_slow_clock_lut_0_INV_0 : INV
    port map (
      I => Cont_slow_clock(0),
      O => Cont_Mcount_slow_clock_lut(0)
    );
  Cont_Mcount_CONTADOR_temp_lut_0_INV_0 : INV
    port map (
      I => Cont_CONTADOR_temp(0),
      O => Cont_Mcount_CONTADOR_temp_lut(0)
    );
  Cont_CONTADOR_temp_not00011_INV_0 : INV
    port map (
      I => Cont_CONTADOR_temp_cmp_le0000,
      O => Cont_CONTADOR_temp_not0001
    );
  Cont_CONTADOR_temp_not00011_1_INV_0 : INV
    port map (
      I => Cont_CONTADOR_temp_cmp_le0000,
      O => Cont_CONTADOR_temp_not00011
    );

end Structure;

