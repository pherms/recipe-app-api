FROM python:3.9-alpine
LABEL maintainer="pherms@outlook.com"

RUN apk add build-base python3-dev libffi-dev rust>=1.41.0 cargo openssl-dev docker-compose

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install pip==20.1
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user