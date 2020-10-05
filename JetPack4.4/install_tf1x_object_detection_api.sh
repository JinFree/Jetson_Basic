#!/bin/bash
cd
git clone https://github.com/tensorflow/models.git
cd models/research
# Compile protos.
sudo apt install protoc-compiler
protoc object_detection/protos/*.proto --python_out=.
# Install TensorFlow Object Detection API.
cp object_detection/packages/tf1/setup.py .
python3 -m pip install --use-feature=2020-resolver .
python3 object_detection/builders/model_builder_tf1_test.py
