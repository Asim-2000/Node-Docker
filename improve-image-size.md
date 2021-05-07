## 

You will notice that some images are very large, for example image of node is approximately 1 GB large. 
However some images like nginx are of size 135 MB.

One way to reduce the image size is to use linux alpine distribution

What is Alpine Linux:

Independent, non-commercial, general purpose linux distribution for power users who appreciate security, simplicity and resource efficiency.

Every single docker image out there has an alpine version / tag

When you dont specify the tag while pulling the image, you will be pulling the latest image.

Let's pull the alpine version of the node 

```shell
$ docker pull node:lts-alpine
```

LTS=Long Term Support 

Now, check the images available on your system

```shell
$ docker image ls
```

Here you can see that the alpine version of the node is approximately 75 MBs that is quite  a big reduction in image size as compared to the actual node image. And this is the reason, it will take seconds to download on your system.


