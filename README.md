## Images
   * platform ([Dockerfile](https://github.com/timmson/mbt-platform-v2/blob/master/Dockerfile))

### Languages
   * Java 17 LTS ([Dockerfile](https://github.com/timmson/mbt-platform-v2/blob/master/java/Dockerfile))
   * Node 18 LTS ([Dockerfile](https://github.com/timmson/mbt-platform-v2/blob/master/node/Dockerfile))

## Features
   * Based on Ubuntu 22.04 LTS
   * Optimized for Russia (Moscow timezone)
   * Developer tools are included (vim, net-tools, ...)

## Build and Push
```sh
docker login

# platform
docker build -t timmson/mbt-platform-v2:platform .
docker push timmson/mbt-platform-v2:platform

# java
docker build -t timmson/mbt-platform-v2:java java/.
docker push timmson/mbt-platform-v2:java

# node
docker build -t timmson/mbt-platform-v2:node node/.
docker push timmson/mbt-platform-v2:node
```
