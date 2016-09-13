# kali-minimal-dockerfile
Dockerfile to automatically set up selected security tools to create a light-weight Kali Linux Docker image. Tools can be added by modifying the Dockerfile accordingly.
## Installation
First, install docker for your OS and make sure that it is running. Then pull the official Kali Linux Docker base-image:
```
docker pull kalilinux/kali-linux-docker
```
## Building with Dockerfile Script:
```
git clone https://github.com/v00d00sec/kali-minimal-dockerfile.git
cd kali-minimal-dockerfile
docker build -t <your_repo_name_here> .
```
## Run the image (interactive shell):
```
docker run -ti --net bridge -P -v <your_host_share_path>:<your_container_share_path> <repo_name_here> /bin/bash
```
