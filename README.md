# kali-minimal-dockerfile
Dockerfile to set up selected security tools to create a light-weight kali linux Docker image.
## Installation
First, install docker and make sure that it is running. Then pull the official  Kali Linux Docker base-image:
```
docker pull kalilinux/kali-linux-docker
```
## Building with Dockerfile Script:
```
docker build -t <repo_name_here> .
```
## Run the image:
```
docker run -ti --net bridge -P -v <host_share_path>:<container_share_path> <repo_name_here> /bin/bash
```
