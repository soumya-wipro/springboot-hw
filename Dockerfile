FROM openjdk:8-jdk-alpine
RUN apk update
RUN apk add maven
MAINTAINER Soumya