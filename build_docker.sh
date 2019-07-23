#!/bin/sh

timestamp=$(date --utc +%Y-%m-%d_%H-%M-%S_%Z)

docker build appengine --no-cache --tag ancoris/appengine
docker tag ancoris/appengine ancoris/appengine:${timestamp}
docker push ancoris/appengine:${timestamp}

docker build appengine-with-python-libraries --no-cache --tag ancoris/appengine-with-python-libraries
docker tag ancoris/appengine-with-python-libraries ancoris/appengine-with-python-libraries:${timestamp}
docker push ancoris/appengine-with-python-libraries:${timestamp}

echo Tag is ${timestamp}
