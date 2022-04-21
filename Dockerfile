FROM python:3.10
MAINTAINER B-or-is

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

#RUN adduser -d user
RUN useradd --create-home user

USER user