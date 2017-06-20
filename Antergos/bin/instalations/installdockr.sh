#!/bin/bash
# inatall docker
sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ubuntu-$(lsb_release -cs)main"
sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get install -y docker-engine 
sudo gpasswd -a "${USER}" docker
# install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.11.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
