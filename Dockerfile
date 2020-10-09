# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: junhypar <junhypar@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/08 17:45:15 by junhypar          #+#    #+#              #
#    Updated: 2020/10/09 18:58:56 by junhypar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx
RUN apt-get -y install openssl
RUN apt-get -y install vim
RUN apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc
RUN apt-get -y install mariadb-server
RUN apt-get -y install wget

COPY ./srcs/install_server.sh ./
COPY ./srcs/nginx_data ./tmp
COPY ./srcs/phpinfo.php ./tmp
COPY ./srcs/config.inc.php ./tmp
COPY ./srcs/wp-config.php ./tmp

CMD bash install_server.sh
