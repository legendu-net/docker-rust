# dclong/rust [@DockerHub](https://hub.docker.com/r/dclong/rust/) | [@GitHub](https://github.com/dclong/docker-rust)

Rust in Docker. 

## Prerequisite

You need to [install Docker](http://www.legendu.net/en/blog/docker-installation/) before you use this Docker image.


## Usage in Linux/Unix

Please refer to the Section
[Usage](http://www.legendu.net/en/blog/my-docker-images/#usage)
of the post [My Docker Images](http://www.legendu.net/en/blog/my-docker-images/) 
for detailed instruction on how to use the Docker image.

The following command starts a container 
and mounts the current working directory and `/home` on the host machine 
to `/workdir` and `/home_host` in the container respectively.
```
docker run -u `id -u`:`id -g` -it --init \
    --hostname rust \
    --log-opt max-size=50m \
    -v $(pwd):/workdir \
    -v $(dirname $HOME):/home_host \
    dclong/rust /bin/bash
```
The following command (only works on Linux) does the same as the above one 
except that it limits the use of CPU and memory.
```
docker run -u `id -u`:`id -g` -it --init \
    --hostname rust \
    --log-opt max-size=50m \
    --memory=$(($(head -n 1 /proc/meminfo | awk '{print $2}') * 4 / 5))k \
    --cpus=$(($(nproc) - 1)) \
    -v $(pwd):/workdir \
    -v $(dirname $HOME):/home_host \
    dclong/rust /bin/bash
```
## [Log Information](http://www.legendu.net/en/blog/my-docker-images/#docker-container-logs)

## [Detailed Information](http://www.legendu.net/en/blog/my-docker-images/#list-of-images-and-detailed-information) 

## [Known Issues](http://www.legendu.net/en/blog/my-docker-images/#known-issues)

## [About the Author](http://www.legendu.net/pages/about)
