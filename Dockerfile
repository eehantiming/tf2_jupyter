# docker build -t tf2_jupyter .

# docker run -it --rm -p 8888:8888 -v /mnt/sda2/codes/cheehowe:/tf/cheehowe --name cheehowe tf2_jupyter

FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get -y update 
RUN apt-get install -y 'ffmpeg'\
    'libsm6'\ 
    'libxext6'\
    python3-pip

RUN pip3 install --no-cache-dir --upgrade pip 
RUN pip3 install --no-cache-dir opencv-python