# This docker image is intended to be used for packages that need to do
# image tests with e.g. pytest-mpl and guarantees fixed versions of other
# libraries such as freetype.

FROM ubuntu:16.04
LABEL authors="Thomas Robitaille <thomas.robitaille@gmail.com>"

RUN apt-get update
RUN apt-get install -y python3-pip python3-jinja2 cython3 libfreetype6 libpng16-16 git
RUN apt-get install -y --no-install-recommends texlive-latex-base texlive-latex-extra texlive-fonts-recommended dvipng
RUN pip3 install numpy==1.10.4 matplotlib==1.5.3 scipy==1.0.0
RUN pip3 install pytest pytest-mpl pytest-astropy
