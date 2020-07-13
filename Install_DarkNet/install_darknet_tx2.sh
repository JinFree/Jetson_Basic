#!/bin/bash
cp Makefile_tx2 ~/Makefile
cp yolov3-tiny-prn.weights ~/yolov3-tiny-prn.weights
cp yolov3-tiny.weights ~/yolov3-tiny.weights
cp yolov4-tiny.weights ~/yolov4-tiny.weights
cd
git clone https://github.com/AlexeyAB/darknet.git
cd darknet
mv ../Makefile .
make -j $(nproc)
mkdir bin && cd bin && wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights
mv ~/yolov3-tiny-prn.weights ~/darknet/bin/yolov3-tiny-prn.weights
mv ~/yolov3-tiny.weights ~/darknet/bin/yolov3-tiny.weights
mv ~/yolov4-tiny.weights ~/darknet/bin/yolov4-tiny.weights
