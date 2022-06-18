# MC-Docker-Creator

Spigot Minecraft Server images

## Prebuild Containers

You can find prebuilt containers on DockerHub so you don't have to build them yourself:  
https://hub.docker.com/r/calucon/spigot

## Build a container

To build a container you must have docker installed on your machine and have permission to use docker. Afterwars simply run the build script that matches the server version you want.

### Example

To build Spigot version `1.18.2` simply run:

```bash
./build-1.18.2.sh
# or
/bin/bash build-1.18.2.sh
```

This creates a local image tagged `calucon/spigot:1.18.2`.  
More information on how to run the server can be found below. Simply replace `$TAG` with the example `1.18.2`.

## Single Instane

You must run the container using `-it` otherwise the server can not read any commands you're typing.

```
docker run -it --rm -v "/var/spigot-docker/data:/app" calucon/spigot:$TAG
```

> Replace `$TAG` with your preferred server version

## Environment Variables

| ENV | Default | Description |  
|---|---|---|  
| `XMX` | `1024M` | Java Xmx Value |  
| `XMS` | `128M` | Java Xms Value |  


## Server Data

All server data is stored in the `/app` directory within the container.

## Dependencies

This project depends on Spigots' [BuildTools](https://www.spigotmc.org/wiki/buildtools/) to compile the server code. All Spigot versions listed here are the same as the ones listed on their official website