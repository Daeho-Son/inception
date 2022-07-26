FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && \
	apt-get -y install wordpress php-fpm wget 

COPY ./conf/script.sh .

RUN chmod 777 ./script.sh

CMD ["./script.sh"]