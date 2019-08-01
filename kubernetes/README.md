# Prepare k8s cluster

Preapre VMs (TODO)

TODO for VMs with two network interfaces NAT & host-only, comment gateway for host-only interface in /etc/netplan/50-cloud-init.yaml

## Master node
```
scp -i ~/.ssh/id_rsa_k8s prepare-kubernetes.sh majky@kubernetes-master:~/
ssh -i ~/.ssh/id_rsa_k8s majky@kubernetes-master -t sudo sh prepare-kubernetes.sh
```
```
scp -i ~/.ssh/id_rsa_k8s prepare-kubernetes-master-node.sh majky@kubernetes-master:~/prepare-kubernetes-master-node.sh
ssh -i ~/.ssh/id_rsa_k8s majky@kubernetes-master -t sudo sh prepare-kubernetes-master-node.sh
```

copy _kubeadm join_ command for worker nodes

looks like
```
sudo kubeadm join 192.168.56.100:6443 --token 53h5vp.s0euiq9aaaaaaaaa \
    --discovery-token-ca-cert-hash sha256:8b1f87bd3716cc76e1863e42afc7548b0c97d720748aaaaaaaaaaaaaaaaaa4e1
```

## Worker nodes

```
scp -i ~/.ssh/id_rsa_k8s prepare-kubernetes.sh majky@kubernetes-node-$NODE_ID:~/
ssh -i ~/.ssh/id_rsa_k8s majky@kubernetes-node-$NODE_ID -t sudo sh prepare-kubernetes.sh
```

to get kubeadm join command run this command on kubernetes master node
```
sudo kubeadm token create --print-join-command
```
and joint worker to cluster with result of previous command, it will looks like
```
sudo kubeadm join 192.168.56.100:6443 --token 53h5vp.s0euiq9aaaaaaaaa \
    --discovery-token-ca-cert-hash sha256:8b1f87bd3716cc76e1863e42afc7548b0c97d720748aaaaaaaaaaaaaaaaaa4e1
```

