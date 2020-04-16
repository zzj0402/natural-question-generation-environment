FROM tensorflow/tensorflow:latest-devel-gpu

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop

WORKDIR /root/