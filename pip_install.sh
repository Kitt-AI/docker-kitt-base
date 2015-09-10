
apt-get update

apt-get install -y build-essential python-dev 
apt-get install -y curl python python-setuptools libcurl4-openssl-dev

# eliminate error:
# InsecurePlatformWarning: A true SSLContext object is not available. This prevents urllib3 from configuring SSL appropriately

apt-get install -y libffi-dev libssl-dev 
curl https://bootstrap.pypa.io/get-pip.py | python

pip install -U requests[security]

pip install -U python-crfsuite \
    google-api-python-client \
    facebook-sdk \
    pycurl \
    parsetron \
    bottle \
    fuzzywuzzy \
    fuzzyset \
    jinja2 \
    tqdm \
    tabulate \
    termcolor \
    functools32 \
    grequests
