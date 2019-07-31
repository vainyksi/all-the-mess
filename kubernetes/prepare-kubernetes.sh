#!/bin/bash

USER=majky

sudo apt-get install docker.io -y
echo "---------------------------------------" 
echo "docker installed"
echo "---------------------------------------" 

sudo systemctl start docker
sudo systemctl enable docker
echo "---------------------------------------" 
echo "docker started"
echo "---------------------------------------" 

#add normal user on node into docker group
sudo usermod -a -G docker $USER
echo "---------------------------------------" 
echo "user added to docker group"
echo "---------------------------------------" 

sudo swapoff -a	&&
sudo sed -i 's/\/swap.img/#\/swap.img/' /etc/fstab
echo "---------------------------------------" 
echo "swap disabled"
echo "---------------------------------------" 

sudo apt-get install apt-transport-https curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get install kubeadm -y
echo "---------------------------------------" 
echo "kubernetes installed"
echo "---------------------------------------" 





echo "---------------------------------------" 
echo "END of preparing kubernetes"
echo "---------------------------------------" 