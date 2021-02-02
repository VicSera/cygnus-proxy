#!/bin/bash

docker run --name proxy -d -p 80:80 vicsera/cygnus:proxy
