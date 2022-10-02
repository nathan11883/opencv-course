FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles
WORKDIR /opt/build

RUN  apt-get update
RUN apt-get install -y \
        build-essential cmake
RUN apt-get install  -y \        
        wget unzip \
        libhdf5-dev \
        libopenblas0 libopenblas-dev \
        libprotobuf-dev \
        libjpeg8 libjpeg8-dev \
        libpng16-16 libpng-dev \
        libtiff5 libtiff-dev \
        libwebp-dev \
        libopenjp2-7 libopenjp2-7-dev \
        libtbb2 \
        libeigen3-dev \
        tesseract-ocr tesseract-ocr-por libtesseract-dev \
        python3 python3-pip python3-numpy python3-dev 
RUN apt-get install  -y \
         git \
        yasm \
        vim \
        pkg-config \
        libswscale-dev \
        libjpeg-dev \
        libavformat-dev \
        libpq-dev \
        xserver-xephyr
RUN apt-get -y clean
RUN rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir pafy \
        numpy  \
        youtube-dl \
        PyQt5 \
        opencv-python 
