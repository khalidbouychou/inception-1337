# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: khbouych <khbouych@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/30 20:27:11 by khbouych          #+#    #+#              #
#    Updated: 2023/12/30 20:27:12 by khbouych         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y nginx
RUN apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout \
    /etc/nginx/ssl/inception.key -subj "/C=MO/ST=KH/L=KH/O=1337/OU=1337/CN=khbouych.42.fr/UID=khbouych"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/wordpress

RUN chmod 755 /var/www/wordpress

RUN chown -R www-data:www-data /var/www/wordpress
# RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]