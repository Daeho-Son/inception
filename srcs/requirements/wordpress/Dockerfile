FROM alpine:3.13

RUN apk update && apk upgrade && \
	apk add bash mariadb-client

COPY tools/init.sh /init.sh

RUN chmod +x /init.sh

CMD ["tail", "-f"]