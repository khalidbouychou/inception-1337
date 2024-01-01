#!/bin/bash

sleep 10
DN="localhost"
U="admin"
AE="nfo@gmail.com"
PW="Gg712178@19977"
TITLE="Wordpress Site"

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

mkdir -p /run/php/

cd /var/www/wordpress

chmod -R 755 /var/www/wordpress/ 

chown -R root:root /var/www/wordpress

chown -R www-data:www-data /var/www/wordpress

wp core download --allow-root

mv /var/www/wordpress/wp-config-sample.php  /var/www/wordpress/wp-config.php

sed -i '36 s/\/run\/php\/php7.4-fpm.sock/9000/' /etc/php/7.4/fpm/pool.d/www.conf

wp config set --allow-root DB_NAME ${SDB} --path='/var/www/wordpress'
wp config set --allow-root DB_USER ${S_USER} --path='/var/www/wordpress'
wp config set --allow-root DB_PASSWORD ${S_PWD} --path='/var/www/wordpress'
wp config set --allow-root DB_HOST "mariadb:3306" --path='/var/www/wordpress'

chmod 600 wp-config.php

# instal the wordpress
wp core install --url="localhost" \
                --title="inception" \
                --admin_user="khbouych" \
                --admin_password="Gg712178 " \
                --admin_email="khalidbouychouu@gmail.com" \
                --allow-root \
                --path='/var/www/wordpress'

# # create second user in wordpress
# wp user create khalid khalid@gmail.com --user_pass="1234" --role='author' --allow-root

mkdir -p /run/php

/usr/sbin/php-fpm7.4 -F