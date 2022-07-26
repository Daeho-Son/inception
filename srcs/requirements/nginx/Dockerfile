# FROM debian:buster

# RUN apt-get -y update && apt-get -y upgrade

# RUN apt-get -y install nginx openssl

# # RUN openssl req -newkey rsa:2048 -nodes -x509 -days 365 \
# # 	-subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=42/CN=localhost" \
# # 	-keyout /etc/ssl/private/localhost_p.key \
# # 	-out /etc/ssl/certs/localhost.crt && \
# # 	chmod 777 /etc/ssl/certs/localhost.crt /etc/ssl/private/localhost_p.key

# COPY ./conf/default /etc/nginx/sites-available/default
# COPY ./conf/default /etc/nginx/sites-enabled/default
# COPY ./conf/script.sh .
# RUN chmod 777 ./script.sh
# # CMD ["nginx", "-g", "daemon off;"]
# CMD ["./script.sh"]

FROM alpine:3.13

RUN apk update && apk upgrade && \
	apk add bash

COPY tools/init.sh /init.sh

RUN chmod +x /init.sh

CMD ["tail", "-f"]