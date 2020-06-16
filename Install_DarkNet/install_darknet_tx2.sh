#!/bin/bash
cp Makefile_tx2 ~/Makefile
cd
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
mv ../Makefile .
make -j $(nproc)
