FROM openjdk:8-jdk-alpine
MAINTAINER Soumya
RUN mkdir release

COPY ~ec2-user/.aws /release/.aws
WORKDIR /release
COPY target/springboot-hw-1.0.jar springboot-hw-1.0.jar
ENTRYPOINT ["java","-jar","/springboot-hw-1.0.jar"]