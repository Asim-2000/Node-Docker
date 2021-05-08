## Tags and Versions

- Allows you to control the image version
- Avoid breaking changes 
- Is Safe

Consider a scenario in which you made image with node:alpine that pulls the latest version of node and that the latest version is 8 and after certain weeks you again build the docker app and now you have latest version as 12. Do you think that your app will run same as it was running on previous version. No. It might break !

Same scenario with node:latest.

## What is better way of doing?

Use a specific version

```Dockerfile
FROM node:14.16.1-alpine
```
At the time of building this app, we have node 14.16.1 as LTS Version.

Here you have the control and tomorrow if node version 20 comes out, you have the option to update or not.


## Creating tag for your custome images

```shell
$ docker tag <exiting name>:<existing tag> <exsiting name>:<new tag>
```

Example:

```shell
$ docker tag user-service-api:latest user-service-api:1
```
Always build an image with latest tag and then tag the version using this command.

### Benefits?

The latest tag will always be pointing to latest version.

