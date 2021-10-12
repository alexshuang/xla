#!/bin/sh

BASE_IMG=${1:-graphcore/poplar:2.2.0-focal-20210723}
IMG_TAG=${2:-xla_poplar:2.2.0}

docker build -t $IMG_TAG -f docker/Dockerfile --build-arg base_image=$BASE_IMG .
