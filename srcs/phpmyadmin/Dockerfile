FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add nginx supervisor vim

# Install php for phpmyadmin
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-iconv php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session

# Ngnix config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# phpmyadmin configs
ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz .
RUN tar -xzvf phpMyAdmin-5.0.2-english.tar.gz
RUN mv phpMyAdmin-5.0.2-english/ /var/my_page/
RUN rm -rf phpMyAdmin-5.0.2-english.tar.gz
COPY config.inc.php /var/my_page/config.inc.php

# Scripts for starting and access rights for them
COPY start_admin.sh /var/my_page/
COPY supervisord.conf /etc/supervisord.conf
RUN chmod +x /var/my_page/start_admin.sh
RUN chmod +x /etc/supervisord.conf

# Alpine stuff
RUN mkdir -p /run/nginx
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

EXPOSE 5000
CMD ["/var/my_page/start_admin.sh"]

