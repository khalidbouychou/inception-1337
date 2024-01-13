FROM debian:bullseye
RUN apt-get update -y && apt-get upgrade -y && apt-get -y install php php-mysql && apt-get install -y wget && wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php

CMD [ "php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]
