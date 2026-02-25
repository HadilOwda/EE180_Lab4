#!/bin/sh

DIR=lab4_submission

rm -rf $DIR $DIR.tar.gz
mkdir -p $DIR
cp README $DIR
cp -R hw/fpga.img $DIR
cp -R hw/hdl/verilog/sobel $DIR
cp -R sim/tests $DIR
(cd $DIR && zip -r ../$DIR.zip .)
rm -rf $DIR
echo "Submission file created: $DIR.zip"
