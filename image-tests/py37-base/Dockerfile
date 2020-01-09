# This docker image is intended to be used for packages that need to do
# image tests with e.g. pytest-mpl and guarantees fixed versions of other
# libraries such as freetype. Use Ubuntu 16.04 and install Python manually
# rather than use Ubuntu 18.04 to ensure consistent libpng/freetype
# versions with other images.

FROM ubuntu:16.04
LABEL authors="Thomas Robitaille <thomas.robitaille@gmail.com>"

RUN apt-get update

RUN apt-get install -y --no-install-recommends libfreetype6 libpng16-16 git \
                                               wget gcc make zlib1g-dev \
                                               libssl-dev libbz2-dev \
                                               texlive-latex-base \
                                               texlive-latex-extra \
                                               texlive-fonts-recommended \
                                               dvipng libfreetype6-dev \
                                               libpng12-dev \
                                               pkg-config \
                                               cm-super \
                                               libsqlite3-dev

RUN apt-get install -y ca-certificates
RUN apt-get install libffi-dev

WORKDIR /tmp
RUN wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
RUN tar xvzf Python-3.7.3.tgz
WORKDIR /tmp/Python-3.7.3
RUN ./configure
RUN make
RUN make install
WORKDIR /
