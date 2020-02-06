FROM amazonlinux:2

WORKDIR /tmp

# Install the dependencies
RUN yum -y install gcc-c++ && yum -y install findutils

RUN yum -y install tar gzip

RUN touch ~/.bashrc && chmod +x ~/.bashrc

# Install the latest version of the Node Version Manager
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# Install the latest version of node
RUN source ~/.bashrc && nvm install 13.8.0

WORKDIR /build
