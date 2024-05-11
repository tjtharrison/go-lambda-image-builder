#!/bin/bash

# Clone AWS repo 
git clone https://github.com/aws/aws-lambda-base-images aws-lambda-base-images

cd aws-lambda-base-images
git checkout go1.x

# Build the base image
docker build . --network host -t registry.tjth.co/aws-lambda-go:1.x -f Dockerfile.go1.x
docker push registry.tjth.co/aws-lambda-go:1.x