FROM python:3.5.3
ENV PYTHONUNBUFFERED 1

RUN mkdir /PawPrints
WORKDIR /PawPrints
RUN apt-get update && apt-get install libldap2-dev libsasl2-dev
COPY requirements.txt /PawPrints/requirements.txt
RUN pip install -r requirements.txt
COPY . /PawPrints/
