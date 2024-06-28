#!/usr/bin/env bash

export LC_ALL=C

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-grcoin/grcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/grcoind docker/bin/
cp $BUILD_DIR/src/grcoin-cli docker/bin/
cp $BUILD_DIR/src/grcoin-tx docker/bin/
strip docker/bin/grcoind
strip docker/bin/grcoin-cli
strip docker/bin/grcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
