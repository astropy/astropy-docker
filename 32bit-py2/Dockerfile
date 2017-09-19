# The aim of this docker image is to set up an environment in which we can
# run 32-bit tests for Astropy

FROM ubuntu:14.04
LABEL authors="Thomas Robitaille <thomas.robitaille@gmail.com>, Larry Bradley <larry.bradley@gmail.com>"

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y libpython2.7-dev:i386 \
                       gcc:i386 \
                       python-dev:i386 \
                       python-numpy:i386

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
RUN cd setuptools-28.7.1; python setup.py install; cd ..

# Install jinja2 - python-jinja2:i386 doesn't exist in apt
RUN easy_install jinja2

# Install Cython - we have to do it here because the built-in version is too old
RUN easy_install cython

# Install an updated numpy.  The built-in version is 1.8.2, but we need
# >= 1.9.  Here we install v1.12.1 which is the latest released version.
RUN easy_install numpy==1.12.1
