#!/bin/sh
# do docker build --no-cache to drop cached parts

WORKSPACE=$(
  cd $(dirname "$0")
  pwd
)

set -xe
if [ -z $1 ]
then
  TAG=":latest"
else
  TAG=":$1"
fi
echo docker build --tag="softasap/sphinx-projectdocs$TAG" $WORKSPACE/../
docker build --tag="softasap/sphinx-projectdocs$TAG" $WORKSPACE/../

echo "Successfully built softasap/sphinx-projectdocs$TAG"

