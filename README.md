# Docker Image for a Paper Minecraft Server

This Image lets you simply run a Minecraft Server based on [PaperMC](https://papermc.io/).
It is optimized to the best settings and can be configured to your needs.

## Using the Image

From command line:

```bash
docker run -p 25565:25565 -e EULA=true leonfilser/paper_minecraft
```

## Environment Variables

* Eula: Must be set to true to run the Server properly
* XMS: THe minimum amount of RAM used by the Server (Default 2G)
* XMX: The maximum amount of RAM used by the Server (Default 16G)

## Compose File

```yaml
version: '3.5'

services:
  minecraft:
    image: leonfilser/paper_minecraft
    restart: always
    container_name: minecraft
    volumes:
      - ${PWD}/data:/minecraft
    ports:
      - 25565:25565
    environment:
      - EULA=true
      - XMS=4G
      - XMX=8G
```

## Docker Hub
[DockerHub](https://hub.docker.com/r/leonfilser/paper_minecraft)


## License
[MIT](https://choosealicense.com/licenses/mit/)
