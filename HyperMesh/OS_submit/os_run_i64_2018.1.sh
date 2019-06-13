#!/bin/bash


export ALTAIR_LICENSE_PATH=/home/yudong/Documents/altair_license.dat
export LD_LIBRARY_PATH=/CAE/OS_2017.2/altair/hwsolvers/common/bin/linux64
export RADFLEX_PATH=/CAE/OS_2017.2/altair/hwsolvers/common/bin/linux64


new_build=/CAE/OS_2017.2/altair/hwsolvers/optistruct/bin/linux64/optistruct_2018.1_linux64_i64
new_folder=long_free_format_export_3_5


cd $PWD
mkdir $new_folder
cp $new_folder.fem ./$new_folder
cd $new_folder

$new_build -version
$new_build $new_folder.fem
