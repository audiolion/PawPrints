FROM python:3.5
ENV PYTHONUNBUFFERED 1

RUN mkdir /PawPrints
WORKDIR /PawPrints
ADD requirements.txt /PawPrints/
RUN pip install -r requirements.txt
ADD . /PawPrints/
RUN python manage.py migrate
