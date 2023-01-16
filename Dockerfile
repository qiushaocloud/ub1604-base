FROM ubuntu:16.04

ENV TZ=Asia/Shanghai

COPY ./etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apt-get install -y curl net-tools psmisc vim \
    && apt install -y lsof iputils-ping wget telnet \
    && echo ":set encoding=utf-8" >> /root/.vimrc \
    && apt-get update