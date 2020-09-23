############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Inversion_LUP1
set_top inverse_top
add_files Inversion_LUP1/inverse.cpp
add_files Inversion_LUP1/inverse.h
add_files -tb Inversion_LUP1/inverse_test.cpp
open_solution "INLINE"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./Inversion_LUP1/INLINE/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
