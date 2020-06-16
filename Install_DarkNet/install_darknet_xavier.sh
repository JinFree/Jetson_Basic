#!/bin/bash
cp Makefile_xavier ~/Makefile
cd
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
mv ../Makefile .
make -j $(nproc)
