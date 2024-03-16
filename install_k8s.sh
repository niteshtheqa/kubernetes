#!bin/bash

sudo su
apt-get update -y
apt-get install apt-transport-https -y


apt install docker.io -y
docker --version
systemctl start docker
systemctl enable docker

curl -s https://packages.cloud.google.com/apt... | sudo apt-key add 


nano /etc/apt/sources.list.d/kubernetes.list

deb http://apt.kubernetes.io/ kubernetes-xenial main


apt-get update -y

apt-get install -y kubelet kubeadm kubectl kubernetes-cni
