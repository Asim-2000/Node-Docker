Simply change your Dockerfile to pull the alpine version instead. 

In our case

```Dockerfile
FROM node:alpine
```

and then build the image again

```shell
$ docker build -t user-service-api:latest .
```

Make sure you are in the directory where Dockerfile is residing as you have used dot (.) as the destination of Dockerfile.

