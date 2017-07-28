# The aim of this docker image is to set up an environment in which we can
# run 32-bit tests for Astropy affiliated packages - it includes Astropy
# on top of the existing astropy-32bit-test-env Docker image.

FROM astropy/astropy-32bit-test-env:1.6
LABEL authors="Thomas Robitaille <thomas.robitaille@gmail.com>, Larry Bradley <larry.bradley@gmail.com>"

RUN easy_install pip
RUN pip install astropy


