FROM ubuntu:16.04
MAINTAINER Mukunthan Doraiswamy
#Docker File for Jenkins Installation on Ubuntu
RUN apt-get update &&\
    apt-get install -y wget
RUN wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add - &&\
    sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' &&\
    apt-get update &&\
    apt-get install -y default-jre &&\
    apt-get install -y default-jdk &&\
    apt-get install -y jenkins
EXPOSE 8080
