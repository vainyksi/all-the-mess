# Kuberneted notes


For custom local built docker image use specific version tag. If ```latest``` was used, it tries to pull latest image but it does not exist in docker hub.

#### create kubernetes deployment via cmd
```
kubectl run hello-kubernetes --replicas=2 --image=simple-web:v1.0 --port=8000 --image-pull-policy=Never
```

-----------------

#### deploy kubernetes service via cmd
```
kubectl expose deployment hello-kubernetes --type=NodePort --port=80 --target-port=8000 --name=hello-kubernetes
```


#### setup autocomplete for kubectl

```
source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.
```

#### setup remote acces to kubectl

```
scp -r -i $KEY_PATH $USERNAME@$KUBERNETES_MASTER_NODE_IP:~/.kube .
cp -r .kube/ ~/
kubectl version --short
```
result should be something like
```
Client Version: v1.15.2
Server Version: v1.15.1
```
