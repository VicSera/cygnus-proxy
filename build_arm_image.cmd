:: Create new image
docker buildx build --platform linux/arm/v7 -t vicsera/cygnus:proxy .

:: Push it to Docker Hub
docker push vicsera/cygnus:proxy

:: Remove old image
docker image prune -f
