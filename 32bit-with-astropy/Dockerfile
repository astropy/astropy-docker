# The aim of this docker image is to set up an environment in which we can
# run 32-bit tests for Astropy affiliated packages - it includes Astropy
# on top of the existing astropy-32bit-test-env Docker image.

FROM astropy/astropy-32bit-test-env:1.6
MAINTAINER Thomas P. Robitaille <thomas.robitaille@gmail.com>

RUN easy_install pip
RUN pip install astropy


