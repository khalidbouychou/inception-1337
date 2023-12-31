#!/bin/bash

SDB="Sdb"
S_USER="adil"
S_PWD="0000"
S_ROOT_P="1111"

service mariadb start

sleep 5

mysql -u root -p$S_ROOT_P -e "CREATE DATABASE IF NOT EXISTS \`${SDB}\`;"
mysql -u root -p$S_ROOT_P -e "CREATE USER IF NOT EXISTS \`${S_USER}\`@'%' IDENTIFIED BY '${S_PWD}';"
mysql -u root -p$S_ROOT_P -e "GRANT ALL PRIVILEGES ON \`${SDB}\`.* TO \`${S_USER}\`@'%';"
mysql -u root -p$S_ROOT_P -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${S_ROOT_P}';"
mysql -u root -p$S_ROOT_P -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$S_ROOT_P shutdown

exec mysqld_safe