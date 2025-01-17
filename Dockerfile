ARG python_version=3.9.7

FROM python:$python_version
ENV TELEGRAM_UPLOAD_CONFIG_DIRECTORY=/config
ENV PYTHONPATH=/app/
VOLUME /config
VOLUME /files

RUN mkdir /app
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
COPY uploady/ /app/uploady/
WORKDIR /files

ENTRYPOINT ["/usr/local/bin/python", "/app/uploady/management.py"]
