#!/bin/bash
cd 
wget https://nvidia.box.com/shared/static/wa34qwrwtk9njtyarwt5nvo6imenfy26.whl -O torch-1.7.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev
pip3 install Cython 
pip3 install wheel
pip3 install numpy
pip3 install torch-1.7.0-cp36-cp36m-linux_aarch64.whl
rm torch-1.7.0-cp36-cp36m-linux_aarch64.whl


sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev -y
git clone --branch v0.8.1 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.8.1
sudo python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
sudo rm -rf torchvision

