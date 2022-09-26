

# Ubuntu for now

FROM ubuntu:20.04

# Update 
RUN apt -y update

# Working Directory

WORKDIR /home

# Install common and useful tools
RUN apt -y install curl wget vim git 

# Install comman languages
RUN apt -y install python3-pip  g++

# Install Class Cipher Busters
RUN pip3 install secretpy
