#!/bin/bash


if [ "$TRAVIS_TAG" == "" ]; then
  exit 0
fi

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t clems4ever/mesos-term:$TRAVIS_TAG .
docker push clems4ever/mesos-term:$TRAVIS_TAG
