#!/bin/sh
if [ -z $1 ]
then
  TAG=":latest"
else
  TAG=":$1"
fi
echo docker push softasap/sphinx-projectdocs$TAG
docker push softasap/sphinx-projectdocs$TAG
