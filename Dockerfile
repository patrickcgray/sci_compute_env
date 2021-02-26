# FROM defines the base image
FROM conda/miniconda3
MAINTAINER Patrick Gray <pgrayobx@gmail.com>

# don't want to be updating but need to in order to use opencv
RUN apt update
RUN apt -y install libgl1-mesa-glx

ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

# Pull the environment name out of the environment.yml
RUN echo "source activate $(head -1 /tmp/environment.yml | cut -d' ' -f2)" > ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 /tmp/environment.yml | cut -d' ' -f2)/bin:$PATH
