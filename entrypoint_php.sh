#!/bin/bash

sed -i -e "s/database_name_here/$WORDPRESS_DB_NAME/" wp-config.php

sed -i -e "s/username_here/$WORDPRESS_DB_USER/" wp-config.php

sed -i -e "s/password_here/$WORDPRESS_DB_PASSWORD/" wp-config.php

sed -i -e "s/localhost/$WORDPRESS_DB_HOST/" wp-config.php

echo "[www]" >> /etc/php/8.1/fpm/php-fpm.conf
echo "listen = 9000" >> /etc/php/8.1/fpm/php-fpm.conf

php-fpm8.1 -F -O
