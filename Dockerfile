FROM python:3.8-alpine
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:
RUN mkdir /app
RUN pip install pymysql
WORKDIR /app