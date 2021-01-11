# Docker for Tensorflow2 + Jupyter notebook

## Introduction
Docker container with tensorflow2 and jupyter notebook. Built on Ubuntu 18.04.  
Make sure you have [docker engine](https://docs.docker.com/engine/install/ubuntu/) and [nvidia-container-toolkit](https://github.com/NVIDIA/nvidia-docker) installed. You do not need cuda toolkit installed on your host machine.

## How to use
1. git clone and cd into this repo
2. Build docker image with `docker build -t tf2_jupyter .`
3. Run a container with `docker run -it --rm -p 8888:8888 -v /path/to/your/dir:/tf/mystuff tf2_jupyter`
4. Follow the instructions in your terminal to open the notebook in a browser. You should see your notebooks under /tf/mystuff