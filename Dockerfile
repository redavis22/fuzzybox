

# Ubuntu for now
FROM ubuntu:20.04

# Update 
RUN apt -y update

# Working Directory
WORKDIR /home

# Set Hostname
ENV DOCKER_HOSTNAME=${DOCKER_HOSTNAME:fuzzybox}

# Install common and useful tools
RUN apt -y install curl wget vim git 

# Install comman languages
RUN apt -y install python3-pip  g++

# Install Class Cipher Busters
RUN pip3 install secretpy

# Install Oh-my-zsh
RUN apt-get install -y zsh

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Use ZSH
CMD zsh
