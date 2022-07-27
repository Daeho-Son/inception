FROM alpine:3.13

RUN apk update && apk upgrade && \
	apk add bash nginx openssl dumb-init && \
	openssl req -newkey rsa:2048 -nodes -x509 -days 365 \
	-subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=42/CN=localhost" \
	-keyout /etc/ssl/private/localhost_p.key \
	-out /etc/ssl/certs/localhost.crt && \
	chmod 777 /etc/ssl/certs/localhost.crt /etc/ssl/private/localhost_p.key && \
	rm -rf /etc/nginx/conf.d/default.conf

COPY conf/default.conf /default.conf 
COPY tools/init.sh /init.sh

RUN chmod +x /init.sh

CMD ["dumb-init", "--", "/bin/bash", "/init.sh"]