# public-docker
Docker build files and contexts that we're making publicly available.

To build and push a docker image do something like the following:

1. `docker build --no-cache --tag ancoris/appengine appengine`
2. `docker login`
3. `docker push ancoris/appengine`
