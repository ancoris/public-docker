FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y python-pip curl lsb-release apt-utils
RUN pip install --no-cache-dir --upgrade pip

# Install Google Cloud SDK - see https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update -y && apt-get install google-cloud-sdk google-cloud-sdk-app-engine-python -y

ENV GAE_HOME /usr/lib/google-cloud-sdk/platform/google_appengine

ENV PYTHONPATH $GAE_HOME
