# The aim of this docker image is to set up an environment in which we can
# run 32-bit tests for Astropy

FROM ubuntu:16.04
LABEL authors="Thomas Robitaille <thomas.robitaille@gmail.com>, Larry Bradley <larry.bradley@gmail.com>"

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y libpython3.5-dev:i386 \
                       gcc:i386 \
                       python3-dev:i386 \
                       python3-numpy:i386 \
                       cython3:i386
RUN apt-get install -y locales
RUN dpkg-reconfigure locales

ENTRYPOINT ["linux32"]

RUN locale-gen "en_US.UTF-8"
RUN dpkg-reconfigure locales

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8

ENV PYTHONIOENCODING UTF8

ENV CC "gcc -m32"
ENV LDSHARED "gcc -m32 -shared"
ENV LDFLAGS "-m32 -shared"

# Install setuptools - python-setuptools:i386 doesn't exist in apt
RUN wget https://pypi.python.org/packages/1d/04/97e37cf85972ea19364c22db34ee8192db3876a80ed5bffd6413dcdabe2d/setuptools-28.7.1.tar.gz
RUN tar xvzf setuptools-28.7.1.tar.gz
RUN cd setuptools-28.7.1; python3 setup.py install; cd ..

# Install jinja2 - python-jinja2:i386 doesn't exist in apt
RUN easy_install-3.5 pip

RUN pip3.5 install jinja2
