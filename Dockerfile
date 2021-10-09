FROM openjdk:8-jdk-alpine
RUN apk update
RUN apk add maven
RUN apk add --update docker openrc
RUN rc-update add docker boot
RUN docker build -t docker-alpine .
RUN docker run -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" docker-alpine:latest /bin/sh
MAINTAINER Soumya