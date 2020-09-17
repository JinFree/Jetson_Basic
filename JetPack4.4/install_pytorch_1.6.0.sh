#!/bin/bash
cd 
wget https://nvidia.box.com/shared/static/yr6sjswn25z7oankw8zy1roow9cy5ur1.whl -O torch-1.6.0rc2-cp36-cp36m-linux_aarch64.whl
pip3 install Cython 
pip3 install wheel
pip3 install numpy
pip3 install torch-1.6.0rc2-cp36-cp36m-linux_aarch64.whl
rm torch-1.6.0rc2-cp36-cp36m-linux_aarch64.whl


sudo apt-get install libjpeg-dev zlib1g-dev -y
git clone --branch v0.6.0 https://github.com/pytorch/vision torchvision
cd torchvision
sudo python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
sudo rm -rf torchvision
