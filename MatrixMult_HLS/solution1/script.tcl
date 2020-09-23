############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MatrixMult_HLS
set_top matrixmult
add_files MatrixMult_HLS/mmult.h
add_files MatrixMult_HLS/mmult.cpp
add_files -tb MatrixMult_HLS/mmult_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./MatrixMult_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
