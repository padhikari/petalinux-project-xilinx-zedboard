#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/proj/xbuilds/2019.1_0524_1430/installs/lin64/SDK/2019.1/bin:/proj/xbuilds/2019.1_0524_1430/installs/lin64/Vivado/2019.1/ids_lite/ISE/bin/lin64:/proj/xbuilds/2019.1_0524_1430/installs/lin64/Vivado/2019.1/bin
else
  PATH=/proj/xbuilds/2019.1_0524_1430/installs/lin64/SDK/2019.1/bin:/proj/xbuilds/2019.1_0524_1430/installs/lin64/Vivado/2019.1/ids_lite/ISE/bin/lin64:/proj/xbuilds/2019.1_0524_1430/installs/lin64/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/proj/petalinux/2019.1/petalinux-v2019.1_0522_1/logs/bsps/avnet-digilent-zedboard-2019.1/hw_proj/avnet-digilent-zedboard-2019.1/avnet-digilent-zedboard-2019.1.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log zed_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source zed_wrapper.tcl -notrace


