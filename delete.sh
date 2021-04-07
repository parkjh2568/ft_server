# !/bin/bash

docker rm $(docker ps -a -q)
docker rmi -f $(docker images ft_server -q)
