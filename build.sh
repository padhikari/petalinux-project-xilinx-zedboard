#!/bin/bash 

PRJ=$(pwd)

PRJ_DIR=$PRJ/avnet-digilent-zedboard-2019.1

cd $PRJ_DIR

petalinux-build


cd $PRJ