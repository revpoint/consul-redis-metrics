FROM python:3-slim

ADD requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

ADD consul-redis-metrics /usr/local/bin/

ENTRYPOINT ["consul-redis-metrics"]
