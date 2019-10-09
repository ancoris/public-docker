FROM ancoris/appengine

RUN apt-get install -y python3 python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install google-cloud-datastore beautifulsoup4

RUN pip install --no-cache-dir \
        jinja2==2.6 \
        webapp2==2.5.2 \
        pycrypto==2.6.1 \
        six==1.9.0 \
        pytz==2017.3 \
        setuptools==36.6.0 \
        pillow \
        mock \
        requests
