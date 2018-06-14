FROM ancoris/appengine

ENV GAE_HOME /usr/lib/google-cloud-sdk/platform/google_appengine

ENV PYTHONPATH \
$GAE_HOME:\
$GAE_HOME/lib/yaml-3.10:\
$GAE_HOME/lib/fancy_urllib:\
$GAE_HOME/lib/webob-1.2.3:\
$GAE_HOME/lib/webapp2-2.5.2:\
$GAE_HOME/lib/jinja2-2.6:\
$GAE_HOME/lib/httplib2

RUN pip install --no-cache-dir \
        m3-PIL==1.1.7 \
        pycrypto==2.6.1 \
        pytz==2017.3
