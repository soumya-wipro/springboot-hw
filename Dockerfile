FROM openjdk:8-jdk-alpine
RUN apk update
RUN apk add maven
RUN apk add --update docker openrc
RUN rc-update add docker boot
MAINTAINER Soumya