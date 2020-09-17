#!/bin/bash
cd 
sudo apt-get install protobuf-compiler python3-pil python3-lxml python3-tk -y
sudo apt install python3-matplotlib -y
pip3 install Cython contextlib2 jupyter notebook tf_slim
pip3 install pycocotools
git clone https://github.com/tensorflow/models.git
cd ~/models/research/
protoc object_detection/protos/*.proto --python_out=.
echo "export PYTHONPATH=\$PYTHONPATH:$(pwd):$(pwd)/slim" >> ~/.bashrc
export PYTHONPATH=\$PYTHONPATH:$(pwd):$(pwd)/slim
python3 object_detection/builders/model_builder_tf1_test.py
source ~/.bashrc

