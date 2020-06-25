#!/bin/bash
cd 
python3 -m venv .venv_pytorch_14
echo "alias PYTORCH='source ~/.venv_pytorch_14/bin/activate'" >> ~/.bashrc
source ~/.venv_pytorch_14/bin/activate
wget https://nvidia.box.com/shared/static/ncgzus5o23uck9i5oth2n8n06k340l6k.whl -O torch-1.4.0-cp36-cp36m-linux_aarch64.whl
pip3 install --upgrade pip
pip3 install Cython wheel
pip3 install numpy torch-1.4.0-cp36-cp36m-linux_aarch64.whl
ln -s /usr/local/lib/python3.6/dist-packages/cv2.cpython-36m-aarch64-linux-gnu.so ~/.venv_pytorch_14/lib/python3.6/site-packages/cv2.so

git clone --branch v0.5.0 https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
python3 setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
