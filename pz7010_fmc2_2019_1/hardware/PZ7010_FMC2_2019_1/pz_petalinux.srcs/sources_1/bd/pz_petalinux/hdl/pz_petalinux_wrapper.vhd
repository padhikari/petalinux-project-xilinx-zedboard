--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Thu Sep 26 18:12:05 2019
--Host        : ubuv1604 running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target pz_petalinux_wrapper.bd
--Design      : pz_petalinux_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pz_petalinux_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    hdmi_i2c_scl_io : inout STD_LOGIC;
    hdmi_i2c_sda_io : inout STD_LOGIC;
    pl_led_1bit_tri_o : out STD_LOGIC;
    pl_pb_1bit_tri_i : in STD_LOGIC
  );
end pz_petalinux_wrapper;

architecture STRUCTURE of pz_petalinux_wrapper is
  component pz_petalinux is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    pl_led_1bit_tri_o : out STD_LOGIC;
    pl_pb_1bit_tri_i : in STD_LOGIC;
    hdmi_i2c_scl_i : in STD_LOGIC;
    hdmi_i2c_scl_o : out STD_LOGIC;
    hdmi_i2c_scl_t : out STD_LOGIC;
    hdmi_i2c_sda_i : in STD_LOGIC;
    hdmi_i2c_sda_o : out STD_LOGIC;
    hdmi_i2c_sda_t : out STD_LOGIC
  );
  end component pz_petalinux;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal hdmi_i2c_scl_i : STD_LOGIC;
  signal hdmi_i2c_scl_o : STD_LOGIC;
  signal hdmi_i2c_scl_t : STD_LOGIC;
  signal hdmi_i2c_sda_i : STD_LOGIC;
  signal hdmi_i2c_sda_o : STD_LOGIC;
  signal hdmi_i2c_sda_t : STD_LOGIC;
begin
hdmi_i2c_scl_iobuf: component IOBUF
     port map (
      I => hdmi_i2c_scl_o,
      IO => hdmi_i2c_scl_io,
      O => hdmi_i2c_scl_i,
      T => hdmi_i2c_scl_t
    );
hdmi_i2c_sda_iobuf: component IOBUF
     port map (
      I => hdmi_i2c_sda_o,
      IO => hdmi_i2c_sda_io,
      O => hdmi_i2c_sda_i,
      T => hdmi_i2c_sda_t
    );
pz_petalinux_i: component pz_petalinux
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      hdmi_i2c_scl_i => hdmi_i2c_scl_i,
      hdmi_i2c_scl_o => hdmi_i2c_scl_o,
      hdmi_i2c_scl_t => hdmi_i2c_scl_t,
      hdmi_i2c_sda_i => hdmi_i2c_sda_i,
      hdmi_i2c_sda_o => hdmi_i2c_sda_o,
      hdmi_i2c_sda_t => hdmi_i2c_sda_t,
      pl_led_1bit_tri_o => pl_led_1bit_tri_o,
      pl_pb_1bit_tri_i => pl_pb_1bit_tri_i
    );
end STRUCTURE;
