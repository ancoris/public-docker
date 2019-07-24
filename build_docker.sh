#!/bin/sh

tag=$(git symbolic-ref --short HEAD)
if [ "${tag}" = "master" ]; then
    tag=$(date --utc +%Y-%m-%d_%H-%M-%S_%Z)
fi

docker build appengine --no-cache --tag ancoris/appengine
docker tag ancoris/appengine ancoris/appengine:${tag}
docker push ancoris/appengine:${tag}

docker build appengine-with-python-libraries --no-cache --tag ancoris/appengine-with-python-libraries
docker tag ancoris/appengine-with-python-libraries ancoris/appengine-with-python-libraries:${tag}
docker push ancoris/appengine-with-python-libraries:${tag}

echo Tag is ${tag}
