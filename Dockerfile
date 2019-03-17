FROM python:3.6-alpine

RUN pip install --no-cache-dir --upgrade setuptools
RUN pip install --no-cache-dir --upgrade wheel
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir rq-dashboard==0.4.0

ENTRYPOINT ["rq-dashboard"]

EXPOSE 9181