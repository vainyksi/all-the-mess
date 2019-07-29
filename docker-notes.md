# Docker notes

notes related to Docker commands and usage

### Docker run command

```
docker run -it --rm
   --name container-name
   -p <HOST_PORT>:<PORT_IN_CONTAINER>
   -e <ENV_VARIABLE_NAME>=<ENV_VARIABLE_VALUE>
   <IMAGE>
   <COMMAND_TO_RUN>
```
example:
```
docker run -it  --rm --name web-test -p 80:8000 -e TEST=ahoj crccheck/hello-world /bin/sh
```

### Run busybox image interactively with bash
(```/bin/bash``` is not included in image)
```
$ docker run -it busybox /bin/sh
/ #
```

### Build Docker image

```
docker build -t nickname/image-name:latest -t nickanem/image-name:version -t another/tag .
```

### Simple Web-page server
source: https://github.com/crccheck/docker-hello-world

Simple static Web-page server Dockerfile

```Dockerfile
FROM busybox:latest

CMD echo "Hello world" > index.html

EXPOSE 8000
HEALTHCHECK CMD nc -z localhost 8000

# Create a basic webserver and run it until the container is stopped
CMD trap "exit 0;" TERM INT; httpd -p 8000 -h /www -f & wait
```
save as ```Dockerfile``` and build
