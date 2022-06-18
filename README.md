# MC-Docker-Creator

Spigot Minecraft Server images

## Environment Variables

| ENV | Default | Description |  
|---|---|---|  
| `XMX` | `1024M` | Java Xmx Value |  
| `XMS` | `128M` | Java Xms Value |  


## Server Data

All server data is stored in the `/app` directory within the container.

## Single Instane

You must run the container using `-it` otherwise the server can not read any commands you're typing.

```
docker run -it --rm -v "/var/spigot-docker/data:/app" calucon/spigot:$TAG
```

> Replace `$TAG` with your preferred server version
