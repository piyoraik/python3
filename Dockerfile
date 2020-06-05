FROM python:3.8-alpine
RUN mkdir /app
RUN pip install pymysql
WORKDIR /app