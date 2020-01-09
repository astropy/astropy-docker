#!/bin/bash

# Script to build the latest active versions of the MPL images

cd py36-mpl212
docker build --no-cache . -t astropy/image-tests-py36-mpl212:1.8
cd ..

cd py36-mpl222
docker build --no-cache . -t astropy/image-tests-py36-mpl222:1.8
cd ..

cd py37-mpl302
docker build --no-cache . -t astropy/image-tests-py37-mpl302:1.8
cd ..

cd py37-mpl311
docker build --no-cache . -t astropy/image-tests-py37-mpl311:1.8
cd ..

docker push astropy/image-tests-py36-mpl212:1.8
docker push astropy/image-tests-py36-mpl222:1.8
docker push astropy/image-tests-py37-mpl302:1.8
docker push astropy/image-tests-py37-mpl311:1.8
