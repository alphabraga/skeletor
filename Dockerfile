FROM python:3.8-alpine

COPY . /src

WORKDIR /src

RUN pip install -r requirements.txt

EXPOSE 5000

CMD flask run -h '0.0.0.0'