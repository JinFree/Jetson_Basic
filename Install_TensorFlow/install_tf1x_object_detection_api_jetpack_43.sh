#!/bin/bash
cd 
TF1x
sudo apt-get install protobuf-compiler python3-pil python3-lxml python3-tk

ln -s /usr/lib/python3/dist-packages/PIL ~/.venv_tensorflow_1x/lib/python3.6/site-packages/PIL
ln -s /usr/lib/python3/dist-packages/matplotlib ~/.venv_tensorflow_1x/lib/python3.6/site-packages/matplotlib
ln -s /usr/lib/python3/dist-packages/matplotlib-2.1.1.egg-info ~/.venv_tensorflow_1x/lib/python3.6/site-packages/matplotlib-2.1.1.egg-info
ln -s /usr/lib/python3/dist-packages/pyparsing-2.2.0.egg-info ~/.venv_tensorflow_1x/lib/python3.6/site-packages/pyparsing-2.2.0.egg-info
ln -s /usr/lib/python3/dist-packages/pyparsing.py ~/.venv_tensorflow_1x/lib/python3.6/site-packages/pyparsing.py



/usr/local/lib/python3.6/dist-packages/cv2.cpython-36m-aarch64-linux-gnu.so ~/.venv_tensorflow_1x/lib/python3.6/site-packages/cv2.so
