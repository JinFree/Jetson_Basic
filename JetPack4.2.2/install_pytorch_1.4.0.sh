#!/bin/bash
cd
wget https://nvidia.box.com/shared/static/ncgzus5o23uck9i5oth2n8n06k340l6k.whl -O torch-1.4.0-cp36-cp36m-linux_aarch64.whl
pip3 install Cython 
pip3 install wheel
pip3 install numpy 
pip3 install torch-1.4.0-cp36-cp36m-linux_aarch64.whl
rm torch-1.4.0-cp36-cp36m-linux_aarch64.whl

git clone --branch v0.5.0 https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
sudo python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
