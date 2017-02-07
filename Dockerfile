FROM python:3.5.3
ENV PYTHONUNBUFFERED 1

RUN mkdir /PawPrints
WORKDIR /PawPrints
ADD requirements.txt /PawPrints/
RUN apt-get update && apt-get install libldap2-dev libsasl2-dev
RUN pip install -r requirements.txt
ADD . /PawPrints/
