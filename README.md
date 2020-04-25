# personal-docker-library

A collection of docker-images - that may be instatiated to run separate instructions - to create a Docker container.  

## Description

Creating Docker images from scratch is _laborious, however the process is worth the effort.

*Why?*

Consider:

- the runtime of your Docker container
- implicit security risks
- size of images

## Usage

| Name                 | Includes |  
| `python-slim-buster` |  Python3, Postgres, Jupyter |  

```bash
# Build image and create container
docker-compose up -d --build
# View the logs
docker-compose logs -f
# Check out localhost:8888 and Jupyter!

```

Happy Docker-ing! :coffee:
