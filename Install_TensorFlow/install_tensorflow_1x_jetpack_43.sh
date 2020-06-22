#!/bin/bash
cd 
python3 -m venv .venv_tensorflow_1x
echo "alias TF1x='source ~/.venv_tensorflow_1x/bin/activate'" >> ~/.bashrc
source ~/.venv_tensorflow_1x/bin/activate
sudo apt-get update
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
pip3 install -U pip testresources setuptools
pip3 install -U numpy==1.16.1 future==0.17.1 mock==3.0.5 h5py==2.9.0 keras_preprocessing==1.0.5 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 ‘tensorflow<2’
