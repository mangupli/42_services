FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add vim openrc mariadb mariadb-client

# Alpine stuff
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

# Config database
COPY my.cnf /etc/

# Scripts and databases for the setting
COPY mysql_start.sh .
RUN chmod +x mysql_start.sh
COPY create_db .
COPY wordpress.sql .

EXPOSE 3306

CMD sh mysql_start.sh
