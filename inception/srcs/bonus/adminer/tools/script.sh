#!/bin/bash

wget "http://www.adminer.org/latest.php" -O /var/www/wordpress/adminer.php

chown -R root:root /var/www/wordpress/adminer.php 

chmod 755 /var/www/wordpress/adminer.php

cd /var/www/wordpress

php -S 0.0.0.0:80