# !/bin/bash

docker build . -t ft_server

docker run -it -p80:80 -p443:443 ft_server
