FROM jenkins/jenkins:lts
USER root
RUN apt-get update -y && apt-get install -y maven
USER jenkins
