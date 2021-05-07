```shell
$ npm i --save express
```

Add this in ~/.bashrc file

```shell
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
```
```shell
$ docker ps --format=$FORMAT
```

Use this command to list the running container in list format

```shell
$ docker run --name <name> -d -p <port of host>:<port of container> <image to run>:<tag>
```
Example

```shell
$ docker run --name "service-api" -d -p 8080:8080 user-api-service:latest
```


Using Caching after the dependencies have been finalized. Small changes would not take time to reflect.



You will notice that some images are very large, for example image of node is approximately 900 MB large