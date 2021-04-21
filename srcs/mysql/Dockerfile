FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add vim openrc mariadb mariadb-client

# Alpine stuff
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

# Config database
COPY mariadb-server.cnf /etc/my.cnf.d/

COPY mysql_start.sh .
COPY create_db .

EXPOSE 3306
CMD sh mysql_start.sh
