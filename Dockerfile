# syntax=docker/dockerfile:1
FROM ubuntu:18.04
COPY . /app
RUN apt-get update; apt-get install wget gnupg2 software-properties-common maven apt-utils -y
RUN wget -O- https://apt.corretto.aws/corretto.key | apt-key add -
RUN add-apt-repository 'deb https://apt.corretto.aws stable main'
RUN apt-get install -y java-15-amazon-corretto-jdk
RUN mvn -f /app/pom.xml clean install

