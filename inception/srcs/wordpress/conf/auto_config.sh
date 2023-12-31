#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  

chmod  755 /var/www/wordpress/ 

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

cd /var/www/wordpress/

# wp core download --allow-root

mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

sed -i '36 s/\/run\/php\/php7.4-fpm.sock/9000/' /etc/php/7.4/fpm/pool.d/www.conf

wp config set --allow-root DB_NAME ${SDB} --path='/var/www/wordpress'
wp config set --allow-root DB_USER ${S_USER} --path='/var/www/wordpress'
wp config set --allow-root DB_PASSWORD ${S_PWD} --path='/var/www/wordpress'
wp config set --allow-root DB_HOST "mariadb:3306" --path='/var/www/wordpress'


mkdir -p /run/php

/usr/sbin/php-fpm7.4 -F