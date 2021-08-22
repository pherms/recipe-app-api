FROM python:3.9-alpine
LABEL maintainer="pherms@outlook.com"

RUN apk add --update --no-cache docker-compose docker-cli postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev build-base python3-dev libffi-dev rust>=1.41.0 cargo openssl-dev

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install pip==20.1
RUN pip install -r /requirements.txt

RUN apk del .tmp-build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user