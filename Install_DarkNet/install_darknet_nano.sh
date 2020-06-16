#!/bin/bash
cp Makefile_nano ~/Makefile
mv yolov3-tiny-prn.weights ~/yolov3-tiny-prn.weights
cd
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
mv ../Makefile .
make -j $(nproc)
mkdir bin && cd bin && wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights
mv ~/yolov3-tiny-prn.weights ~/darknet/bin/yolov3-tiny-prn.weights
