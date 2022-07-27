#!/bin/bash

# configure php-fpm
sed -i "s/.*listen = 127.0.0.1.*/listen = 9000/g" /etc/php7/php-fpm.d/www.conf

echo "env[MARIADB_DB] = \$MARIADB_DB" >> /etc/php7/php-fpm.d/www.conf
echo "env[MARIADB_USER] = \$MARIADB_USER" >> /etc/php7/php-fpm.d/www.conf
echo "env[MARIADB_PWD] = \$MARIADB_PWD" >> /etc/php7/php-fpm.d/www.conf
echo "env[MARIADB_HOST] = \$MARIADB_HOST" >> /etc/php7/php-fpm.d/www.conf

# setup wp-cli
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

sleep 5;
# Waiting
if ! mysqladmin -h $MARIADB_HOST -u $MARIADB_USER --password=$MARIADB_PWD --wait=60 ping > /dev/null; then
	printf "MariaDB Daemon Unreachable\n"
	exit 1
fi

# install wordpress with wp-cli
wp core download --version=5.8.1 --path=/var/www/wordpress
cp /wp-config.php /var/www/wordpress/wp-config.php

php-fpm7 --nodaemonize

# tail -f
