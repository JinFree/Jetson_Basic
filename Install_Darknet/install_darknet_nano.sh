#!/bin/bash
cp ../Data/Makefile_nano ~/Makefile
cp ../Data/yolov3-tiny-prn.weights ~/yolov3-tiny-prn.weights
cp ../Data/yolov3-tiny.weights ~/yolov3-tiny.weights
cp ../Data/yolov4-tiny.weights ~/yolov4-tiny.weights
cd
git clone https://github.com/JinFree/darknet.git
cd darknet
mv ../Makefile .
make -j $(nproc)
cd bin && wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights
mv ~/yolov3-tiny-prn.weights ~/darknet/bin/yolov3-tiny-prn.weights
mv ~/yolov3-tiny.weights ~/darknet/bin/yolov3-tiny.weights
mv ~/yolov4-tiny.weights ~/darknet/bin/yolov4-tiny.weights
