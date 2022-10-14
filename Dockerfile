FROM python:3.8-alpine as base

COPY ./requirements.txt /tmp

RUN mkdir /install

WORKDIR /install

RUN pip install --prefix=/install -r /tmp/requirements.txt

from base 

COPY --from=base /install /usr/local

RUN mkdir /app

COPY . /app/

WORKDIR /app

EXPOSE 5000

ENV FLASK_ENV=development

CMD flask run -h '0.0.0.0'