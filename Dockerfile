FROM python:3.8-alpine
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:
RUN apk --no-cache add \
-q \
git \
mercurial \
cloc \
openssl \
openssl-dev \
openssh \
alpine-sdk \
bash \
gettext \
sudo \
build-base \
gnupg \
linux-headers \
xz
RUN mkdir /app
RUN pip install pymysql && \
python3 -m pip install -U discord.py
WORKDIR /app