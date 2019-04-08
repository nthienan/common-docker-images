#!/usr/bin/env bash

MODE="$1"
IMAGE="$2"
VERSION="$3"
DIR="$4"

cd $DIR

if [ "$MODE" = 'build' ]; then
    echo -e "\nBuilding $IMAGE:$VERSION..."
    docker pull $IMAGE:$VERSION || true
    docker build --pull --cache-from $IMAGE:$VERSION -t $IMAGE:$VERSION .
    status=$?
    if [ "$status" -ne "0" ] then
      exit 1
    fi
fi
if [ "$MODE" = "deploy" ]; then
    echo -e '\nDeploying...'
    docker push $IMAGE:$VERSION
fi
