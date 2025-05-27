# Kubix
Created for testing and learning with Docker. It uses a simple Dockerfile.
It's a little http-server that return somthing to sender.
Based on node.js http-server.
### Basic Dockerfile Instructions
#### FROM
From Base Image from e.g. Dockerhub it will enhance with the next instructions.
#### ADD
#### COPY
#### ADD vs COPY
#### RUN
Use run to run some OS Commands e.g. `apt-get install ...`


### Build Docker Image
Tag it with your docker-hub-name (for later push to docker hub) and name it (in this case kubix)
```bash
docker build --build-arg "begruessung=Hello" -t 76mrmario/kubix .
```
### Login to Docker Hub
For pushing to docker hub login.
```bash
docker login -u 76mrmario
```
### Push it to docker hub
```bash
docker push 76mrmario/kubix
```
### Pull it from docker hub anywhere
```bash
docker pull 76mrmario/kubix
```
### Run Docker Container as deamon and name it hello
```bash
docker run -p 8080:8080 --name hello -d 76mrmario/kubix
```
### Run Docker Container with new value for environment variable
```bash 
docker run -p 8080:8080 -d -e BEGRUESSUNG=Hallo! 76mrmario/kubix
```
### Or only Create a Docker Container with a name without running it
```bash
docker create --name hello -e BEGRUESSUNG=Bonjour! -p 8080:8080 76mrmario/kubix 
```
### And start Container later 
```bash
docker start hello
```
### Check Container running with
```bash 
docker ps
```
### see something like this
```bash
CONTAINER ID   IMAGE             COMMAND                  CREATED              STATUS              PORTS                    NAMES
ea79cf678055   76mrmario/kubix   "docker-entrypoint.s…"   About a minute ago   Up About a minute   0.0.0.0:8080->8080/tcp   hello
```
### Browse to ... 
```bash
http://localhost:8080
```
### Show Container Logs
```bash 
docker logs hello
```
### See something like this
```bash
Kubix server starting...
1722578278344 Received request from ::ffff:172.17.0.1
1722578278377 Received request from ::ffff:172.17.0.1   
```
### Stop Container
```bash
docker stop hello
```

### Remove Container
```bash
docker rm hello
```
### Remove Image
```bash
docker rmi 76mrmario/kubix
```
