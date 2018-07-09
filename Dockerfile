# The base image is Ubuntu 16.04
FROM ubuntu:16.04

# Author: Roy Evangelista
LABEL maintainer="royevangelista@gmail.com"

# Install basic packages
RUN apt-get update && apt-get install -y vim git curl wget sudo cmake

# Create user
RUN useradd --create-home -s /bin/bash ubuntu

# Remove password
RUN passwd -d ubuntu

# Add ubuntu to sudo group
RUN adduser ubuntu sudo

# Change working directory
WORKDIR /home/ubuntu

# Change user
USER ubuntu

# Copied from base image
CMD ["/bin/bash"]
