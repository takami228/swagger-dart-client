#!/bin/sh

set -x
set -e

BUILD_TYPE=${1}

if [ ${BUILD_TYPE} = "clean" ]; then
  rm -rf build/*
  rm -rf build/.*
fi

if [ ${BUILD_TYPE} = "build-dart" ]; then
  java -jar openapi-generator-cli.jar generate -i petstore.yaml -g dart -t template/dart -o build
  flutter format build/lib/*
fi

if [ ${BUILD_TYPE} = "build-dart2" ]; then
  java -jar openapi-generator-cli.jar generate -i petstore.yaml -g dart -t template/dart2 -o build
  flutter format build/lib/*
fi
