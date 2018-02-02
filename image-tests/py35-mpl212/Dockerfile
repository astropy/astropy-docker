# This docker image is intended to be used for packages that need to do
# image tests with e.g. pytest-mpl and guarantees fixed versions of other
# libraries such as freetype.

FROM ubuntu:16.04
LABEL authors="Thomas Robitaille <thomas.robitaille@gmail.com>"

RUN apt-get update
RUN apt-get install -y python3-pip python3-jinja2 cython3 libfreetype6 libpng16-16 git
RUN pip3 install numpy==1.14.0 matplotlib==2.1.2 scipy==1.0.0
RUN pip3 install pytest pytest-mpl pytest-astropy

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8

ENV PYTHONIOENCODING UTF8
