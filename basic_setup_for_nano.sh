#!/bin/bash
sudo apt install python-dev python3-dev python-pip python3-pip python3-venv-y
echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/local/cuda/bin" >> ~/.bashrc
sudo -H pip install -U jetson-stats
