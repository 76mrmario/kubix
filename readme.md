# Kubix
Created for testing and learning with Docker. 
It's a little http-server that return somthing to sender.
Based on node.js http-server. You can Build the image on your own or use prebuild from
https://hub.docker.com/repository/docker/76mrmario/kubix - see from "Pull it from docker hub ... "
downward and replace <your login name> with "76mrmario"

### Build Docker Image on your own
Tag it with your docker-hub-name (for later push to docker hub) and name it (in this case kubix) 
```bash
docker build --build-arg "begruessung=Hello" -t <your login name>/kubix .
```
### Login to Docker Hub
For pushing to docker hub login.
```bash
docker login -u <your login name>
```
### Push it to docker hub
```bash
docker push <your login name>/kubix
```
### Pull it from docker hub anywhere
```bash
docker pull <your login name>/kubix
```
### Run Docker Container as deamon and name it hello
```bash
docker run -p 8080:8080 --name hello -d <your login name>/kubix
```
### Run Docker Container with new value for environment variable
```bash 
docker run -p 8080:8080 -d -e BEGRUESSUNG=Hallo! <your login name>/kubix
```
### Or only Create a Docker Container with a name without running it
```bash
docker create --name hello -e BEGRUESSUNG=Bonjour! -p 8080:8080 <your login name>/kubix 
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
### Remove Image from your local registry
```bash
docker rmi <your login name>/kubix
```
