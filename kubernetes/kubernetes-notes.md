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
