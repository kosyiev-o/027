#!/bin/bash

apt -y update
apt-get -y install \
apt-transport-https \
curl \
software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository -y\
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get -y install docker-ce docker-ce-cli containerd.io
apt-get -y install docker-compose

apt install gnupg2 pass -y #for storring credentials

#create own docker images and push them to personal dockerhub repositories
cd /home/vagrant/
docker login --username=kosyiev --password=f18f6908-df0c-4512-8a81-478938d54d6a
docker build -t mysql_serv ./db/
docker run --name my_db -d mysql_serv
docker commit my_db kosyiev/db_server
docker push kosyiev/db_server

docker build -t wp_serv ./wp/
docker run --name my_wp -d wp_serv
docker commit my_wp kosyiev/wp_server
docker push kosyiev/wp_server

#and stop all containers
docker ps -a | xargs docker stop

#build docker-compose containers with pulled own docker images for checking
docker-compose up -d

