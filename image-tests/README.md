### About

This directory contains the definitions for docker images that we can use to run
'image' tests in Astropy and other packages - these are tests that use e.g. the
[pytest-mpl](http://github.com/matplotlib/pytest-mpl) package to do
pixel-by-pixel comparisons. These kinds of tests are highly dependent on the
versions of not only Matplotlib but e.g. Numpy, freetype and possibly other
dependencies, so to avoid issues related to this we run the tests inside Docker
containers with 'frozen' versions of the required dependencies. The images
defined here include Python 3, Numpy, Matplotlib, and Scipy pre-installed.

### Building

To build an image that will be uploaded to the astropy Docker organization, use
the following e.g.:

    docker build . -t astropy/image-tests-py35-mpl153:<version>

where ``<version>`` is a version number that hasn't been used yet (e.g. ``1.0``)
used to identify the image. You can then push the image to the Docker Hub using:

    docker push astropy/image-tests-py35-mpl153:<version>

The latest images can be found [here](https://hub.docker.com/r/astropy/).

While new images can be added in future for new Matplotlib versions, the
existing images should ideally not be changed (except for very minor aspects)
to make sure the tests will continue to pass.

### Base image versions

The base images contain all the required non-Python packages as well as the
Python installation, but not e.g. Matplotlib and Numpy.

The basic pattern for the image name is
``astropy/image-tests-py??-base:version``, and the versions are:

* ``1.2``: added libbz2, libfreetype, libpng, pkg-config and cm-super

### Matplotlib image versions

These images include the following extra packages compared to the base image:

* pytest
* pytest-mpl
* pytest-astropy
* numpy
* matplotlib
* scipy

The versions of Numpy, Matplotlib and SciPy are pinned. The basic pattern for
the image names is ``astropy/image-tests-py??-mpl???:version`` and the
versions are:

* ``1.8``: updated pytest-mpl to 0.11 and pytest-doctestplus to 0.5
* ``1.7``: updated pytest-astropy and dependencies to latest versions
* ``1.6``: updated Numpy to 1.16.5 or 1.17.2 depending on the image
* ``1.5``: re-build with version ``1.2`` of base images
