# Multipass and Docker Guide for Beginners  


# Introduction

Multipass is a virtual machine manager that allows you to run multiple virtual machines on your computer. Docker is a containerization platform that enables you to package, ship, and run applications in containers. Docker helps you to build applications that if it works on your computer it will work in production

## Installation of multipass on linux

To install multipass on linux terminal use the command;
```shell
sudo snap install multipass
```
## Create a virtual machine instance

```shell
multipass launch docker
```
The command above is used to launch a new virtual machine using multipass, specifically configured for docker.
when this command is run multipass;
+ creates a new virtual machine instance.
+  automatically install docker on the new virtual machine
+ configures docker to run on the virtual machine
+ starts the docker service on the virtual machine

#### Creating a virtual machine instance with custom name
```shell
multipass launch docker --name docker -vm
```
+ ```multipass launch``` will launch a new virtual machine using multipass.
+ ```docker``` specifies the docker image to use for the virtual machine.
+ ```--name docker -vm```specifies the custom name "docker-vm" for the virtual machine.

To open the a shell session within the "docker-vm" virtual machine launched by multipass the command below is used;
```shell
multipass shell docker-vm
```
 ### Lists of all virtual machine and all running docker containers. 

The command;
```shell
multipass list
```
is used to:
1. list all virtual machine created using multipass
1. show virtual machine state that is if running or stopped
1. see virtual machine IPv4 address

while the command;
```shell
docker ps
```
is used to:
1. list all running docker containers
1. see container ID
1. command running inside the container
1. see the time elapsed since container creation

### Managing docker images 
```shell
docker image
```
### Stop instances
To stop an instance the command below is used
```shell
docker stop
```
### List the containers on a particular VM
```shell
multipass exec docker-vm --docker ps
```
The above command will list all containers on the docker-vm virtual machine.
