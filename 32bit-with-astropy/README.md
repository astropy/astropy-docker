This repository contains a ``Dockerfile`` used to set up a docker image that can
be used by Affiliated packages that want to run tests against a 32-bit Python
installation with Astropy. To build an image that you intend to upload to the
astropy Docker organization, use the following:

    docker build . -t astropy/affiliated-32bit-test-env:<version>

where ``<version>`` is a version number (e.g. ``1.5``) used to identify the
image. You can then push the image to the Docker Hub using:

    docker push astropy/affiliated-32bit-test-env:<version>

The latest images can be found [here](https://hub.docker.com/r/astropy/affiliated-32bit-test-env/).
