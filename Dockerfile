FROM python:3.8-alpine

COPY . /src

WORKDIR /src

RUN pip install -r requirements.txt

ENTRYPOINT ["flask", "run", "--debugger", "--reload", "-h", "'0.0.0.0'"]