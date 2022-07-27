# FROM mariadb
FROM alpine:3.13

RUN apk update && apk upgrade && \
	apk add bash mariadb mariadb-client dumb-init && \
	mkdir -p /run/mysqld /var/lib/mysql && \
    mariadb-install-db --datadir=/var/lib/mysql --auth-root-authentication-method=normal && \
    chown -R mysql:mysql /var/lib/mysql /run/mysqld

COPY tools/init.sh /init.sh

RUN chmod +x /init.sh

CMD ["dumb-init", "--", "/bin/bash", "/init.sh"]