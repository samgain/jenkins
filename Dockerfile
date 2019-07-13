FROM jenkins/jenkins:lts
USER root
RUN apt-get update -y && apt-get install -y maven \
					    apt-transport-https \
    					    ca-certificates \
    					    curl \
    				            gnupg-agent \
    					    software-properties-common                                            

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update -y && apt-get install -y docker-ce docker-ce-cli containerd.io
RUN usermod -aG docker jenkins
