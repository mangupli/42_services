FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add nginx supervisor vim

# Wordpress configs
RUN mkdir var/www/wordpress
COPY ./srcs/wordpress/* /var/www/wordpress/
COPY ./srcs/wp-config.php /var/my_conf/wordpress/wp-config.php

# Ngnix config
COPY ./srcs/nginx.conf /etc/nginx/conf.d/default.conf

# Install php for wordpress
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-iconv php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session php7-ctype



# Scripts for starting and access rights for them
COPY ./srcs/start_wp.sh /tmp/
COPY ./srcs/supervisord.conf /etc/supervisord.conf
RUN chmod +x /tmp/start_wp.sh
RUN chmod +x /etc/supervisord.conf

RUN mkdir -p /run/nginx
EXPOSE 5050
CMD ["/tmp/start_wp.sh"]