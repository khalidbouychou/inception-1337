FROM debian:bullseye


RUN apt  update && apt  upgrade -y && apt  install curl -y

RUN apt install php php-fpm php-mysql mariadb-client wget -y

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

COPY /conf/auto_config.sh /

RUN  chmod +x auto_config.sh

CMD [ "./auto_config.sh" ]
