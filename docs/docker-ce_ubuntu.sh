#!/bin/bash
# Install Docker CE on Ubuntu 16.04-20.10
# https://docs.docker.com/engine/install/ubuntu/

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list

sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

systemctl status docker

## docker-compose
wget -4 https://github.com/docker/compose/releases/latest/download/docker-compose-Linux-x86_64
wget -4 https://github.com/docker/compose/releases/latest/download/docker-compose-Linux-x86_64.sha256
sha256sum -c docker-compose-Linux-x86_64.sha256 docker-compose-Linux-x86_64
rm docker-compose-Linux-x86_64.sha256 docker-compose-Linux-x86_64

