+++
author = ""
categories = [ "docker" ]
date = "2016-11-30T19:02:29-05:00"
description = "docker commandline for life"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "docker_cheatsheet"

+++
List of docker commands to use when building and cleaning up images and containers.

```bash
# builds image (Dockerfile in current dir)
docker build .

# build image with specific Dockerfile
docker build -f Dockfile_unittest

# list docker images
docker images

# list docker image ids
docker images -q

# check current running containers
docker ps

# check all containers (not running too)
docker ps -a

# only return container ids
docker ps -a -q

# start a container in an interactive bash session
docker run -it IMAGEID bash
```

### Nested Commands
Nesting commands together allow you to do much more complex actions against mulitple containers or images.

```bash
# remove old stopped containers
docker rm $(docker ps -a -q)

# remove untaged images
docker rmi $(docker images -q --filter "dangling=true")

# stop all containers
sudo docker stop  $(sudo docker ps -a -q)

# rm all stopped containers
sudo docker rm $(sudo docker ps -a -q)

# rm all images
sudo docker rmi $(sudo docker images -q)
```


