#!/bin/bash

sudo apt-get update

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

Add Docker's Official GPG Key:-  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

Set Up the Docker Stable Repository:-- echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

UPDATE:- sudo apt-get update

 Install Docker: sudo apt-get install docker-ce docker-ce-cli containerd.io

Start and Enable Docker:-- sudo systemctl start docker  &   sudo systemctl enable docker

 Fix the Permission Denied Error:-- sudo usermod -aG docker $USER

 Log Out and Log Back In:- newgrp docker



#this is for user data when creating new instance
