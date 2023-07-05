FROM python:3.8-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		libc-dev \
    git \
	&& rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade setuptools
RUN pip install --no-cache-dir --upgrade wheel
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir git+https://github.com/Parallels/rq-dashboard

ENTRYPOINT ["rq-dashboard"]

EXPOSE 9181