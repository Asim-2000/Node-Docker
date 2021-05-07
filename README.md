## What is Docker?


## What is Image?


## What is Container?




```shell
$ npm i --save express
```

Add the following in ~/.bashrc file

```shell
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
```

Run the following command to list the running container in list format

```shell
$ docker ps --format=$FORMAT
```

To run docker in a particular directory

```shell
$ docker run --name hello -v $(pwd):/usr/share/nginx/html:ro -d -p 8080:80 nginx:latest
```

```shell
$ docker run --name <name> -d -p <port of host>:<port of container> <image to run>:<tag>
```

Creating a copy of container and running it on another port

```shell
$ docker run --name hello-copy --volumes-from hello -d -p 8081:80 nginx:latest
```
Exposing multple ports 

```shell
$ docker run --name website -d -p 3000:80 -p 8080:80 nginx:latest
```

Example

```shell
$ docker run --name "service-api" -d -p 8080:8080 user-api-service:latest
```

To list the images available on your system, run the following command

```shell
$ docker image ls
```

Building a Dockerfile, run the following command

```shell
$ docker build -t <name>:<tag> <destination of Dockerfile>
```
For example:

```shell
$ docker build -t user-api:latest .
```
The dot (.) indicates the current working directory.


Using Caching after the dependencies have been finalized. Small changes would not take time to reflect.



