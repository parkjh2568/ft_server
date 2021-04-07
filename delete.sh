# !/bin/bash

docker rmi -f $(docker images ft_server -q)
