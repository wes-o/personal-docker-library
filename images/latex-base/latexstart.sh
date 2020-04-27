#!/bin/bash
# Change IMAGE to '<your-image-name-here'
IMAGE="pdflatex:latest"
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/latex "$IMAGE" "$@"
