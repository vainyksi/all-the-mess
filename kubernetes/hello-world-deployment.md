# Empty Hello world deployment of nginx to running kubernetes

[source](https://github.com/kubernetes/examples/blob/master/staging/simple-nginx.md)

- deploy nginx pod
```
kubectl create deployment --image nginx my-nginx
```

- expose the nginx as a service
```
kubectl expose deployment my-nginx --port=80 --type=LoadBalancer
```

- scale to 2 replicas (PODs)
```
kubectl scale deployment.apps/my-nginx --replicas=2
```
