# kali-minimal-dockerfile
Dockerfile to automatically set up selected security tools to create a "minimal" Kali Linux docker image. Tools can be added by modifying the Dockerfile accordingly. Includes the installation of fish shell. 

The complete build image can be downloaded from docker hub:
```
docker pull v00d00sec/kali_mini
```
## Installation
First, install docker for your OS and make sure that the docker daemon is running. Then pull the official Kali Linux docker base-image:
```
docker pull kalilinux/kali-linux-docker
```
## Building with Dockerfile Script:
```
git clone https://github.com/v00d00sec/kali-minimal-dockerfile.git
cd kali-minimal-dockerfile
docker build -t <your_new_repo_name_here> .
```
## Run the image with bash interactive shell:
```
docker run -ti --net bridge -P -v <your_host_share_path>:<your_container_share_path> <repo_name_here> /bin/bash
```
## Run the image with fish interactive shell:
```
docker run -ti --net bridge -P -v <your_host_share_path>:<your_container_share_path> <repo_name_here> /usr/bin/fish
```
