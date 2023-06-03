FROM python:3.8

RUN mkdir /app

COPY .. /app

WORKDIR /app

RUN mkdir /.dbt && cp profiles.yml /.dbt && \
pip3 install -r requirements.txt