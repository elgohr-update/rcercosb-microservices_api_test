FROM ubuntu:20.04

MAINTAINER Roger Cercós Blanch

RUN pip install flask-restful && apt-get install -y git-all

EXPOSE 80
