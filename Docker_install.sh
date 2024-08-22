#!/bin/bash

sudo apt-get update

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

Add Docker's Official GPG Key:-  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

Set Up the Docker Stable Repository:-- echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] 
                                       https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

UPDATE:- sudo apt-get update

 Install Docker: sudo apt-get install docker-ce docker-ce-cli containerd.io -y

Start and Enable Docker:-- sudo systemctl start docker  &&   sudo systemctl enable docker

 Fix the Permission Denied Error:-- sudo usermod -aG docker $USER

 Log Out and Log Back In:- newgrp docker



#this is for user data when creating new instance








CREATE DOCKER VOLUMES:--

CREATE VOLUME: docker volume create --name <VOLUME NAGE> --opt type=none  --opt device=<DEVICE_PATh> --opt o=bind

ATTACH VOLUMES WHILE RUNNING CONTAINER:- docker run -d -p <PORTS> --mount source=<VOLUME-NAME>,target=<inside container directory> <IMAGENAME:TAG> 

CREATE DOCKER NETWORKS:

TO CHECK AVALABEL NETWORK:- docker network ls

TO CREATE NETWORK:- docker network create -d <NETWORK-NAME>

RUN_MYSQL CONTAINER AND ATTACHED NETWORK:-  docker run -d -p <PORTS> -e MYSQL_ROOT_PASSWORD=<PASSWORD> -e MYSQL_DATABASE=<DB-NAME> -e MYSQL_USER=<MYSQL_USERNAME> -e MYSQL_PASSWORD=<PASSWORD> --name mysql --network <NETWORKNAME> <IMAGENAME_TAG>


RUN-FLASKA-APP & ATTACHED NETWORK: docker run -d -p 5000:5000 -e MYSQL_HOST=mysql -e MYSQL_USER=admin -e MYSQL_PASSWORD=admin -e MYSQL_DB=testdb --name flask-app --network two-tier-app-nw flask-app:latest





















