#!/bin/sh
# do docker build --no-cache to drop cached parts
if [ -z $1 ]
then
  TAG=":latest"
else
  TAG=":$1"
fi
echo docker build --tag="softasap/sphinx-projectdocs$TAG" ../
docker build --tag="softasap/sphinx-projectdocs$TAG" ../

echo "Successfully built softasap/sphinx-projectdocs$TAG"

