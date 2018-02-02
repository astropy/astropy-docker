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
