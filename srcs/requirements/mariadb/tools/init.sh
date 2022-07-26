#!/bin/bash

# run mysql
cat .mysql_setup 2> /dev/null

if [ $? -ne 0 ]; then
	/usr/bin/mysqld_safe --datadir=/var/lib/mysql &
	
	sleep 10
	# MariaDB setup
	sed -i "s/skip-networking/# skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf
	sed -i "s/.*bind-address\s*=.*/bind-address=0.0.0.0\nport=3306/g" /etc/my.cnf.d/mariadb-server.cnf

	if ! mysqladmin --wait=30 ping; then
    	printf "MariaDB Daemon Unreachable\n"
    	exit 1
  	fi

	# Add user for wordpress
	mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE";

	# %: allow access from outside network
	mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'";

	# Grant Permissions
	mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION";

	mysql -e "FLUSH PRIVILEGES";

	pkill mariadb

	touch .mysql_setup
fi

# Run mysql foreground
/usr/bin/mysqld_safe --datadir=/var/lib/mysql