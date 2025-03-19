FROM centos:centos6

ADD https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz /tmp/
ADD https://github.com/pypa/get-pip/raw/d59197a3c169cef378a22428a3fa99d33e080a5d/get-pip.py
RUN tar -xzf /tmp/Python-2.7.18.tgz -C /tmp/ \
    && cd /tmp/Python-2.7.18 \
    && ./configure \
    && make \
    && make install

RUN ln -s /usr/local/bin/python2.7 /usr/bin/python2.7 \
    && ln -s /usr/local/bin/python2.7 /usr/bin/python \
    && ln -s /usr/local/bin/python2.7 /usr/bin/python2

RUN python get-pip.py
