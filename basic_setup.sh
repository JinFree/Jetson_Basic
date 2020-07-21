#!/bin/bash
sudo add-apt-repository ppa:jonathonf/ffmpeg-4
sudo apt-get update
sudo apt-get install -y \
apt-utils cmake unzip curl pkg-config build-essential \
gstreamer1.0-tools gstreamer1.0-alsa \
 gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
 gstreamer1.0-libav \
 libgstreamer1.0-dev \
 libopenblas-base libopenmpi-dev \
 libgstreamer-plugins-base1.0-dev zlib1g-dev \
 libgstreamer-plugins-good1.0-dev \
 libgstreamer-plugins-bad1.0-dev \
 cmake libgflags-dev pyqt5-dev-tools\
 libjpeg-dev libtiff5-dev libpng-dev libavcodec-dev libavformat-dev \
 libswscale-dev libxvidcore-dev libx264-dev libxine2-dev \
 libv4l-dev ffmpeg v4l-utils gstreamer1.0-tools gstreamer1.0-alsa \
 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad \
 gstreamer1.0-plugins-ugly gstreamer1.0-libav libgstreamer1.0-dev \
 libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev \
 libgstreamer-plugins-bad1.0-dev libqt4-dev mesa-utils libgl1-mesa-dri \
 libqt4-opengl-dev libatlas-base-dev gfortran libeigen3-dev python2.7-dev \
 python3-dev python-numpy python3-numpy python-pip python3-pip python3-matplotlib
sudo apt install python-dev python3-dev python-pip python3-pip python-numpy python3-numpy python3-venv -y
sudo -H pip install -U jetson-stats
