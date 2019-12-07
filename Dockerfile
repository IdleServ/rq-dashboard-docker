FROM python:3.8.0

RUN pip install --no-cache-dir --upgrade setuptools
RUN pip install --no-cache-dir --upgrade wheel
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir rq-dashboard==0.6.1

ENTRYPOINT ["rq-dashboard"]

EXPOSE 9181