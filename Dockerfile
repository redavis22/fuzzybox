

# Ubuntu for now
FROM ubuntu:20.04

# Update 
RUN apt -y update

# Working Directory
WORKDIR /home


# Install common and useful tools
RUN apt -y install curl wget vim git 
# RUN apt-get install libncurses5-dev libncursesw5-dev
#RUN git clone https://github.com/nTerior/fox
#CMD cd fox
#CMD make
#CMD make install
#CMD cd /home

# Install comman languages
RUN apt -y install python3-pip  g++

# Install Class Cipher Busters
RUN pip3 install secretpy

# Install Oh-my-zsh
RUN apt-get install -y zsh

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# Use ZSH
CMD zsh


# Powerline10k
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
RUN echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
RUN q
CMD echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >>! ~/.zshrc
