# start from base
FROM ubuntu:20.04

MAINTAINER Alex Bryant <brylex@amazon.com>

# install system-wide dependencies
RUN apt-get -yqq update
RUN apt-get -yqq install python3-pip python3 curl wget git unzip jq
RUN pip3 install boto3
RUN wget https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_linux_amd64.zip
RUN unzip terraform_0.14.6_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN wget https://github.com/rebuy-de/aws-nuke/releases/download/v2.14.0/aws-nuke-v2.14.0-linux-amd64
RUN mv aws-nuke-v2.14.0-linux-amd64 /bin/aws-nuke
RUN chmod +x /bin/aws-nuke
