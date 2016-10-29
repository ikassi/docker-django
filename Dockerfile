FROM ubuntu
MAINTAINER ikassi

RUN apt-get update -yqq 

RUN bin/bash 

# Install Conda and dependencies
RUN apt-get install python3 wget bzip2 -yqq
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh --quiet
RUN bash Miniconda3-latest-Linux-x86_64.sh -b 
RUN rm Miniconda3-latest-Linux-x86_64.sh
ENV PATH="${PATH}:/root/miniconda3/envs/django/bin"
RUN /root/miniconda3/bin/conda create -yqn django python=3.5 django=1.10

EXPOSE 8000


