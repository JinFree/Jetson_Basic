#!/bin/bash
cd 
wget https://nvidia.box.com/shared/static/3ibazbiwtkl181n95n9em3wtrca7tdzp.whl -O torch-1.5.0-cp36-cp36m-linux_aarch64.whl
pip3 install Cython wheel
pip3 install numpy torch-1.5.0-cp36-cp36m-linux_aarch64.whl

git clone --branch v0.6.0 https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
sudo python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
