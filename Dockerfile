FROM ubuntu:16.04

RUN useradd --create-home -s /bin/bash ubuntu

WORKDIR /home/ubuntu
USER ubuntu
