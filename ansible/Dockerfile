# The base image is Ubuntu 16.04
FROM royge/ubuntu:latest

# Author: Roy Evangelista
LABEL maintainer="royevangelista@gmail.com"

# Install basic packages
RUN sudo apt-get install -y python-pip

# Install ansible
RUN sudo pip install ansible

# Copied from base image
CMD ["/bin/bash"]
