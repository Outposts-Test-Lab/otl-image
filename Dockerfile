# start from base
FROM ubuntu:20.04

MAINTAINER Alex Bryant <brylex@amazon.com>

# install system-wide dependencies
RUN apt-get -yqq update
RUN apt-get -yqq install python3-pip python3 curl wget git unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN wget https://github.com/rebuy-de/aws-nuke/releases/download/v2.14.0/aws-nuke-v2.14.0-linux-amd64
RUN mv aws-nuke-v2.14.0-linux-amd64 /bin/aws-nuke
RUN chmod +x /bin/aws-nuke

