#!/bin/bash

MASTER_IP_ADDRESS=192.168.56.100

sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address $MASTER_IP_ADDRESS

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/a70459be0084506e4ec919aa1c114638878db11b/Documentation/kube-flannel.yml
echo "---------------------------------------"
echo "kubernetes initialized"
echo "---------------------------------------" 





echo "---------------------------------------"
echo "END of preparing kubernetes master node"
echo "---------------------------------------"