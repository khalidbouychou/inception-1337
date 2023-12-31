#!/bin/bash

SDB="sdb"
S_USER="khbouych"
S_PWD="0000"
S_ROOT_P="1111"

service mariadb start

sleep 5

mysql -e "CREATE DATABASE IF NOT EXISTS \`${SDB}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${S_USER}\`@'%' IDENTIFIED BY '${S_PWD}';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO \`${S_USER}\`@'%';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${S_ROOT_P}';"
mysql -u root -p$S_ROOT_P -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$S_ROOT_P shutdown

exec mysqld_safe