#!/bin/bash

# Pull new image
docker pull vicsera/cygnus:proxy

# Remove old container
docker kill proxy
docker container rm proxy

# Remove old image
docker image prune -f

# Start new container
docker run --name proxy -d -p 80:80 vicsera/cygnus:proxy
