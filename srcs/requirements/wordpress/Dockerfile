FROM alpine:3.13

RUN apk update && apk upgrade && \
	apk add bash curl mariadb-client dumb-init && \
	apk add php7 php7-phar php7-json php7-curl php7-fpm php7-mysqli php7-iconv && \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar


COPY conf/wp-config.php /wp-config.php

COPY tools/init.sh /init.sh

RUN chmod +x /init.sh

CMD ["dumb-init", "--", "/bin/bash", "/init.sh"]