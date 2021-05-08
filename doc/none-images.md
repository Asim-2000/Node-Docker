## <None> in Docker Images

### The Good <none>:<none>

These are intermediate images and can be seen using docker images -a. They don't result into a disk space problem but it is definitely a screen "real estate" problem. Since all these <none>:<none> images can be quite confusing as what they signify.

### The Bad <none>:<none>

These images are the dangling ones, which can cause disk space problems. These <none>:<none> images are being listed as part of docker images and need to be pruned.

(a dangling file system layer in Docker is something that is unused and is not being referenced by any images. Hence we need a mechanism for Docker to clear these dangling images)
