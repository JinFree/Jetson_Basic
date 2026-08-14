#!/bin/bash
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev libomp-dev -y
pip3 install Cython
pip3 install numpy
wget https://developer.download.nvidia.com/compute/redist/jp/v512/pytorch/torch-2.1.0a0+41361538.nv23.06-cp38-cp38-linux_aarch64.whl -O  torch-2.1.0-cp38-cp38-linux_aarch64.whl
pip3 install torch-2.1.0-cp38-cp38-linux_aarch64.whl