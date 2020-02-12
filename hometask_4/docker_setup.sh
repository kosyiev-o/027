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

#create docker image
cd /home/vagrant/mysql/
docker build -t mysql_serv .
docker run --name mysql_serv -d mysql_serv
docker login --username=kosyiev --password=f18f6908-df0c-4512-8a81-478938d54d6a
docker tag mysql_serv kosyiev/027:sql
docker push kosyiev/027:sql
#for getting access to mysql_server on VM: docker exec -it mysql_serv mysql -uroot -p
