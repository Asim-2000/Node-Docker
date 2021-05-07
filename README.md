## What is Docker?

Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.

## What is Image?

An image is an inert, immutable, file that's essentially a snapshot of a container. Images are created with the build command, and they'll produce a container when started with run. Images are stored in a Docker registry such as registry.hub.docker.com. Because they can become quite large, images are designed to be composed of layers of other images, allowing a minimal amount of data to be sent when transferring images over the network.
## What is Container?

To use a programming metaphor, if an image is a class, then a container is an instance of a class—a runtime object. Containers are hopefully why you're using Docker; they're lightweight and portable encapsulations of an environment in which to run applications.


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



