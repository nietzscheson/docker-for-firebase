docker-for-firebase
==============

This is a Docker (with docker-compose) environment for Firebase development.

# Installation

1. First, clone this repository:

```bash
$ git clone https://github.com/nietzscheson/docker-for-firebase
```

2. Init project
```bash
$ make init
```

3. Login in Firebase:
```bash
$ make login
```

4. Select your Firebase project:
```bash
$ make use
```

5. Show containers:
```bash
$ make ps
```
This results in the following running containers:

```bash
> $ docker-compose ps
             Name                         Command             State                                   Ports
--------------------------------------------------------------------------------------------------------------------------------------------
docker-for-firebase_node_1   yarn --cwd functions serve   Up      0.0.0.0:5000->5000/tcp, 0.0.0.0:9228->9228/tcp, 0.0.0.0:9229->9229/tcp
```