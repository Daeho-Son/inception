FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && \
	apt-get -y install mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./co