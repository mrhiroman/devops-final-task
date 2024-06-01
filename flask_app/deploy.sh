#!/bin/bash

set -e

TAG="latest"

while getopts t: flag
do
    case "${flag}" in
        t) TAG=${OPTARG};;
    esac
done

echo "Building Docker image with tag: $TAG"

docker-compose down

docker-compose build --build-arg TAG=$TAG

docker-compose up -d

echo "Application deployed and running with tag: $TAG"
