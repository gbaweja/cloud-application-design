FROM ubuntu:18.04

# update repositories
RUN apt-get -y update &&\
    apt-get -y upgrade

# get python and pip
RUN apt-get install -y python3-dev &&\
    apt-get install -y python3-pip

# install python packages
RUN pip3 install Flask

# set some environment variables
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Make /bin/bash the default RUN shell
SHELL ["/bin/bash", "-c"]

# create and move to the working directory
WORKDIR /app
COPY . /app

# run the server on 8080
ENV FLASK_APP=picoblog.py
CMD flask run --host=0.0.0.0 --port=8080