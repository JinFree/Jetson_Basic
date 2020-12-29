#!/bin/bash
sudo apt-get update
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran -y
sudo apt-get install python3-pip -y
pip3 install -U pip testresources setuptools==49.6.0
pip3 install -U numpy==1.16.1 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
cd
wget https://developer.download.nvidia.com/compute/redist/jp/v44/tensorflow/tensorflow-1.15.3+nv20.9-cp36-cp36m-linux_aarch64.whl -O tensorflow-1.15.3+nv20.9-cp36-cp36m-linux_aarch64.whl
pip3 install tensorflow-1.15.3+nv20.9-cp36-cp36m-linux_aarch64.whl
rm tensorflow-1.15.3+nv20.9-cp36-cp36m-linux_aarch64.whl
