# This docker image is intended to be used for packages that need to do
# image tests with e.g. pytest-mpl and guarantees fixed versions of other
# libraries such as freetype.

FROM astropy/image-tests-py37-base:1.2

RUN pip3 install setuptools pip --upgrade
RUN pip3 install pytest pytest-mpl pytest-astropy numpy==1.17.2 matplotlib==3.1.1 scipy==1.3.0
