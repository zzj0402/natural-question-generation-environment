FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop
RUN pip install tqdm boto3 requests regex
WORKDIR /root/

# Setup Evaluation Script
RUN pip install install-jdk
RUN python -m install-jdk jdk.install('12')
RUN pip install git+https://github.com/Maluuba/nlg-eval.git@master
RUN nlg-eval --setup