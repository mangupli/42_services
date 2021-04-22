FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add nginx supervisor vim openrc

# Wordpress configs
ADD https://wordpress.org/latest.tar.gz .
RUN tar -xzvf latest.tar.gz
RUN mv wordpress /var/my_page/
RUN rm -rf latest.tar.gz
COPY wp-config.php /var/my_page/wp-config.php

# Ngnix config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Install php for wordpress
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-iconv php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session php7-ctype

# Scripts for starting and access rights for them
COPY start_wp.sh /var/my_page/
COPY supervisord.conf /etc/supervisord.conf
RUN chmod +x /var/my_page/start_wp.sh
RUN chmod +x /etc/supervisord.conf

# Alpine stuff
RUN mkdir -p /run/nginx
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

EXPOSE 5050
CMD ["/var/my_page/start_wp.sh"]