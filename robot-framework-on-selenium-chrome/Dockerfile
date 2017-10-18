FROM selenium/standalone-chrome

RUN sudo apt-get update
RUN sudo apt-get install -y --no-install-recommends python python-pip python-setuptools
RUN sudo -H pip install --no-binary :all: --upgrade pip robotframework-selenium2library
CMD ["robot", "--outputdir", "/tmp", "/tests"]
