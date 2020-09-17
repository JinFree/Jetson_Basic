#!/bin/bash
cd 
wget https://nvidia.box.com/shared/static/8sc6j25orjcpl6vhq3a4ir8v219fglng.whl -O onnxruntime_gpu-1.4.0-cp36-cp36m-linux_aarch64.whl

# Install pip wheel
pip3 install onnxruntime_gpu-1.4.0-cp36-cp36m-linux_aarch64.whl
rm onnxruntime_gpu-1.4.0-cp36-cp36m-linux_aarch64.whl
